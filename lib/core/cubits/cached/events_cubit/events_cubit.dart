import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../models/event.dart';
import 'events_state.dart';

@LazySingleton()
class EventListCubit extends HydratedCubit<EventListState> {
  EventListCubit() : super(const EventListState());

  void set(List<Event> items) {
    emit(EventListState(items: items));
  }

  void add(List<Event> items) {
    emit(EventListState(
      items: List<Event>.from(state.items)..addAll(items),
    ));
  }

  @override
  EventListState? fromJson(Map<String, dynamic> json) =>
      EventListState.fromMap(json);

  @override
  Map<String, dynamic>? toJson(EventListState state) => state.toMap();

  @override
  String get id => "home";
}
