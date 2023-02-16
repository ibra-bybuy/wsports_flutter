import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/cubits/fetch_state.dart';
import 'package:watch_sports/features/event_details/domain/usecases/event_details_usecase.dart';
import '../../../../core/cubits/custom/event_cubit/event_cubit.dart';
import '../../../../core/models/event.dart';
import '../../domain/entities/event_details_response_entities.dart';

@Injectable()
class EventDetailsCubit
    extends Cubit<FetchState<EventDetailsResponseEntities>> {
  final EventDetailsUsecase usecase;
  late final EventCubit eventCubit;
  bool _eventCubitInited = false;
  EventDetailsCubit(this.usecase) : super(FetchInitial());

  Future<void> call(String eventId) async {
    emit(FetchLoading());
    final response = await usecase.call(eventId);
    response.fold((l) => emit(FetchError(l)), (r) {
      setEvent(r.event);
      emit(FetchLoaded(r));
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
