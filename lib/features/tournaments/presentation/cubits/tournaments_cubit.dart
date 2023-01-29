import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/features/tournaments/domain/usecases/tournaments_usecase.dart';
import '../../../../core/cubits/cached/tournaments_cubit/tournaments_cubit.dart';
import 'tournaments_state.dart';

@LazySingleton()
class TournamentsCubit extends Cubit<TournamentsState> {
  final CachedTournamentsCubit cachedTournamentsCubit;
  final TournamentsUsecase usecase;
  TournamentsCubit(this.cachedTournamentsCubit, this.usecase)
      : super(TournamentsInitial());

  Future<void> load() async {
    final response = await usecase.call();

    response.fold((l) => emit(TournamentsError(l)), (r) {
      emit(TournamentsLoaded(r));
    });
  }
}
