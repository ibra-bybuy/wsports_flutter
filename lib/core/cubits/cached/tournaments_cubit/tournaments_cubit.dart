import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../models/tournament.dart';
import 'tournaments_state.dart';

@LazySingleton()
class CachedTournamentsCubit extends HydratedCubit<TournamentsState> {
  CachedTournamentsCubit() : super(const TournamentsState());

  void setItems(List<Tournament> newItems) {
    emit(TournamentsState(items: newItems, originals: newItems));
  }

  void addItems(List<Tournament> newItems) {
    final addingItems = List<Tournament>.from(state.originals)
      ..addAll(newItems);
    emit(
      TournamentsState(
        items: addingItems,
        originals: addingItems,
      ),
    );
  }

  void filterBySearch(String query) {
    List<Tournament> filteredItems = state.originals
        .where((element) =>
            element.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
    emit(
      TournamentsState(
        items: filteredItems,
        originals: state.originals,
      ),
    );
  }

  @override
  TournamentsState? fromJson(Map<String, dynamic> json) =>
      TournamentsState.fromMap(json);

  @override
  Map<String, dynamic>? toJson(TournamentsState state) => state.toMap();
}
