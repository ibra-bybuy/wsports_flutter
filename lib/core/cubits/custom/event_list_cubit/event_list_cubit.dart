import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_sports/core/models/event.dart';

class EventListCubit extends Cubit<List<Event>> {
  EventListCubit(super.initialState);

  void setNew(List<Event> newEvent) {
    emit(newEvent);
  }
}
