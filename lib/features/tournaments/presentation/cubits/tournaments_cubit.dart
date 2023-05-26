import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/cubits/fetch_state.dart';
import 'package:watch_sports/features/tournaments/domain/usecases/tournaments_usecase.dart';
import '../../../../core/cubits/cached/tournaments_cubit/tournaments_cubit.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/tournament_entity.dart';

@LazySingleton()
class TournamentsCubit extends Cubit<FetchState<TournamentEntities>> {
  final CachedTournamentsCubit cachedTournamentsCubit;
  final TournamentsUsecase usecase;

  TournamentsCubit(this.cachedTournamentsCubit, this.usecase)
      : super(FetchInitial());

  Future<Either<Failure, TournamentEntities>> call({
    void Function(TournamentEntities)? onSuccessEmit,
  }) async {
    emit(FetchLoading());
    final response = await usecase.call();

    response.fold((l) => emit(FetchError(l)), (r) {
      if (onSuccessEmit != null) {
        onSuccessEmit(r);
      } else {
        emit(FetchLoaded(r));
        cachedTournamentsCubit.setItems(r.items);
      }
    });

    return response;
  }
}
