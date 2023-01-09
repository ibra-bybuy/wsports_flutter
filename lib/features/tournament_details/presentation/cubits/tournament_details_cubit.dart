import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/cubits/custom/event_cubit/event_cubit.dart';
import 'package:watch_sports/features/tournament_details/domain/usecases/tournament_details_usecase.dart';
import '../../../../core/cubits/custom/event_list_cubit/event_list_cubit.dart';
import '../../../../core/models/event.dart';
import 'tournament_details_state.dart';

@Injectable()
class TournamentDetailsCubit extends Cubit<TournamentDetailsState> {
  late final EventCubit eventCubit;
  late final EventListCubit eventListCubit;
  final TournamentDetailsUsecase usecase;
  TournamentDetailsCubit(
    this.usecase,
  ) : super(TournamentDetailsInitial());

  Future<void> load() async {
    emit(TournamentDetailsLoading());

    final startTime = eventCubit.state.startTime.split("+");

    if (startTime.isNotEmpty) {
      final res = await usecase.call(
        eventCubit.state.name,
        startTime[0],
      );

      res.fold((l) => emit(TournamentDetailsError(l)), (r) {
        if (r.items.isNotEmpty) {
          eventListCubit.setNew(r.items);
        }
        emit(TournamentDetailsLoaded(r));
      });
    }
  }

  setEvents(Event mainEvent, List<Event> events) {
    eventCubit = EventCubit(mainEvent);
    eventListCubit = EventListCubit(events);
  }
}
