import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/cubits/fetch_state.dart';
import 'package:watch_sports/features/fighter/presentation/cubits/cached/cached_fighter_cubit.dart';
import 'package:watch_sports/providers/pagination/pagination_provider.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/models/fight.dart';
import '../../../../core/models/pagination.dart';
import '../../domain/usecases/fighter_usecase.dart';

@Injectable()
class FightsCubit extends Cubit<FetchState<List<Fight>>> {
  final FighterUsecase usecase;
  late final CachedFighterCubit cachedFighter;
  late final PaginationProvider paginationProvider;
  FightsCubit(this.usecase) : super(FetchInitial()) {
    paginationProvider =
        PaginationProvider(limit: 3, page: 0, request: _onPagination);
  }

  void setCachedFighter(CachedFighterCubit setCachedFighter) {
    cachedFighter = setCachedFighter;
  }

  Future<Either<Failure, List<Fight>>> call({
    String query = "",
    int? page,
  }) async {
    emit(FetchLoading());

    final res = await usecase.getFights(query, page ?? 1);
    res.fold((l) {
      emit(FetchError(l));
    }, (r) {
      final fighter = cachedFighter.state.fighter.copyWith(
        fightHistory: List<Fight>.from(cachedFighter.state.fighter.fightHistory)
          ..addAll(r),
      );
      cachedFighter.setFighter(fighter);
      emit(FetchLoaded(r));
    });

    return res;
  }

  Future<int> _onPagination(Pagination pagination) async {
    final res = await call(page: pagination.currentPage);
    return res.fold((l) => 0, (r) => r.length);
  }
}
