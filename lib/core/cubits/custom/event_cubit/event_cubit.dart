import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_sports/core/models/event.dart';

class EventCubit extends Cubit<Event> {
  EventCubit(super.initialState);

  void setNew(Event newEvent) {
    emit(newEvent);
  }
}
