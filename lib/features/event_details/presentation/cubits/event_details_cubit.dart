import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'event_details_state.dart';

@Injectable()
class EventDetailsCubit extends Cubit<EventDetailsState> {
  EventDetailsCubit() : super(EventDetailsInitial());
}
