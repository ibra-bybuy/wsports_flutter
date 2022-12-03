import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../models/event.dart';
import 'event_list_state.dart';

@Injectable()
class EventListCubit extends HydratedCubit<EventListState> {
  final String key;
  EventListCubit(@factoryParam this.key) : super(const EventListState());

  List<Event> get events => state.events;

  void setEvents(List<Event> events) {
    emit(EventListState(events: events));
  }

  void addEvents(List<Event> events) {
    emit(
      EventListState(events: List<Event>.from(state.events)..addAll(events)),
    );
  }

  @override
  EventListState? fromJson(Map<String, dynamic> json) =>
      EventListState.fromMap(json);

  @override
  Map<String, dynamic>? toJson(EventListState state) => state.toMap();

  @override
  String get id => key;
}
