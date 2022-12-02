import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../models/event.dart';
import 'home_events_state.dart';

@Injectable()
class HomeEventsCubit extends HydratedCubit<HomeEventsState> {
  final String key;
  HomeEventsCubit(@factoryParam this.key) : super(const HomeEventsState());

  void setEvents(List<Event> events) {
    emit(HomeEventsState(events: events));
  }

  void addEvents(List<Event> events) {
    emit(HomeEventsState(
        events: List<Event>.from(state.events)..addAll(events)));
  }

  @override
  HomeEventsState? fromJson(Map<String, dynamic> json) =>
      HomeEventsState.fromMap(json);

  @override
  Map<String, dynamic>? toJson(HomeEventsState state) => state.toMap();

  @override
  String get id => key;
}
