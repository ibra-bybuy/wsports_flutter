import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/cubits/custom/event_cubit/event_cubit.dart';
import 'package:watch_sports/core/cubits/fetch_state.dart';
import 'package:watch_sports/features/tournament_details/domain/usecases/tournament_details_usecase.dart';
import '../../../../core/cubits/cached/event_list_cubit/event_list_cubit.dart';
import '../../../../core/models/event.dart';
import '../../domain/entities/tournament_details_response_entities.dart';

@Injectable()
class TournamentDetailsCubit
    extends Cubit<FetchState<TournamentDetailsResponseEntities>> {
  late final EventCubit eventCubit;
  late final EventListCubit eventListCubit;
  final TournamentDetailsUsecase usecase;
  TournamentDetailsCubit(
    this.usecase,
  ) : super(FetchInitial());

  Future<void> load() async {
    emit(FetchLoading());

    final startTime = eventCubit.state.startTime.split("+");

    if (startTime.isNotEmpty) {
      final res = await usecase.call(Uri.decodeFull(eventCubit.state.name));

      res.fold((l) => emit(FetchError(l)), (r) {
        if (r.items.isNotEmpty) {
          eventListCubit.setEvents(r.items);
        }
        emit(FetchLoaded(r));
      });
    }
  }

  setEvents(Event mainEvent, List<Event> events) {
    eventCubit = EventCubit(mainEvent);
    if (mainEvent.isMma) {
      eventListCubit = EventListCubit(mainEvent.name);
    } else {
      eventListCubit = EventListCubit(mainEvent.id);
    }
  }
}
