import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../models/tournament.dart';
import 'tournaments_state.dart';

@LazySingleton()
class CachedTournamentsCubit extends HydratedCubit<TournamentsState> {
  CachedTournamentsCubit() : super(const TournamentsState());

  void setItems(List<Tournament> newItems) {
    emit(TournamentsState(items: newItems));
  }

  @override
  TournamentsState? fromJson(Map<String, dynamic> json) =>
      TournamentsState.fromMap(json);

  @override
  Map<String, dynamic>? toJson(TournamentsState state) => state.toMap();
}
