import '../models/event.dart';

extension EventListExt on List<Event> {
  List<Event> get getNotFinished {
    return where((element) => !element.isFinished).toList();
  }
}
