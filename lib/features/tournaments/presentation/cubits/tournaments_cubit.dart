import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/features/tournaments/domain/usecases/tournaments_usecase.dart';
import '../../../../core/cubits/cached/tournaments_cubit/tournaments_cubit.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/functions/date_functions.dart';
import '../../../../core/models/pagination.dart';
import '../../../../providers/pagination/pagination_provider.dart';
import '../../domain/entities/tournament_entity.dart';
import 'tournaments_state.dart';

@LazySingleton()
class TournamentsCubit extends Cubit<TournamentsState> {
  final CachedTournamentsCubit cachedTournamentsCubit;
  final TournamentsUsecase usecase;
  late final PaginationProvider paginationProvider;
  final _limit = 80;

  TournamentsCubit(this.cachedTournamentsCubit, this.usecase)
      : super(TournamentsInitial()) {
    paginationProvider =
        PaginationProvider(limit: _limit, page: 1, request: _onPagination);
  }

  Future<Either<Failure, TournamentEntities>> call({
    int? limit,
    int? page,
    void Function(TournamentEntities)? onSuccessEmit,
  }) async {
    emit(TournamentsLoading());
    final response = await usecase.call(
      date: DateFunctions(passedDate: DateTime.now().toUtc())
          .yearMonthDayHoursSecsMilliSecs(),
      type: "",
      limit: limit ?? _limit,
      page: page ?? 1,
    );

    response.fold((l) => emit(TournamentsError(l)), (r) {
      if (onSuccessEmit != null) {
        onSuccessEmit(r);
      } else {
        paginationProvider.clear();
        paginationProvider.setTotalPages(r.pagination.totalPages);
        emit(TournamentsLoaded(r));
        cachedTournamentsCubit.setItems(r.items);
      }
    });

    return response;
  }

  Future<int> _onPagination(Pagination pagination) async {
    final res = await call(
        limit: pagination.limit,
        page: pagination.currentPage,
        onSuccessEmit: (r) {
          emit(TournamentsLoaded(r));
          cachedTournamentsCubit.addItems(r.items);
        });

    return res.fold((l) => 0, (r) => r.items.length);
  }
}
