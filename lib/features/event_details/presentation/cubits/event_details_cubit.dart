import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/features/event_details/domain/usecases/event_details_usecase.dart';
import '../../../../core/cubits/custom/event_cubit/event_cubit.dart';
import '../../../../core/models/event.dart';
import 'event_details_state.dart';

@Injectable()
class EventDetailsCubit extends Cubit<EventDetailsState> {
  final EventDetailsUsecase usecase;
  late final EventCubit eventCubit;
  bool _eventCubitInited = false;
  EventDetailsCubit(this.usecase) : super(EventDetailsInitial());

  Future<void> call(String eventId) async {
    emit(EventDetailsLoading());
    final response = await usecase.call(eventId);
    response.fold((l) => emit(EventDetailsError(l)), (r) {
      setEvent(r.event);
      emit(EventDetailsLoaded(r));
    });
  }

  void setEvent(Event event) {
    if (!_eventCubitInited) {
      eventCubit = EventCubit(event);
      _eventCubitInited = true;
    } else {
      eventCubit.setNew(event);
    }
  }
}
