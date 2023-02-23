import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/cubits/cached/event_scores/event_scores_state.dart';
import 'package:watch_sports/core/extensions/string.dart';

import '../../../models/event.dart';
import '../../../models/event_score.dart';

@LazySingleton()
class CachedEventScoresCubit extends HydratedCubit<EventsScoresState> {
  CachedEventScoresCubit() : super(const EventsScoresState());

  void addItems(List<EventScore> items) {
    final currentItems = List<EventScore>.from(state.items);
    for (final item in items) {
      currentItems.removeWhere((element) => element.id == item.id);
    }
    currentItems.addAll(items);

    setItems(currentItems);
  }

  void setItems(List<EventScore> items) {
    emit(EventsScoresState(items: items));
  }

  EventScore? getScoreByEvent(Event event) {
    final reversedItems = List<EventScore>.from(state.items.reversed.toList());
    for (final item in reversedItems) {
      final names = item.joinTeamNames.toLowerCase();
      final contains =
          names.containsAnyWord(event.engTeams.map((e) => e.name).toList());
      if (contains) {
        return item;
      }
    }

    return null;
  }

  @override
  EventsScoresState? fromJson(Map<String, dynamic> json) =>
      EventsScoresState.fromMap(json);
  @override
  Map<String, dynamic>? toJson(EventsScoresState state) => state.toMap();
}
