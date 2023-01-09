import '../models/event.dart';

extension EventListExt on List<Event> {
  List<Event> get getNotFinished {
    return where((element) => !element.isFinished).toList();
  }

  List<Event> groupedByDate(String startTime) {
    return where((element) => element.startTime == startTime).toList();
  }

  List<Event> groupedByDateAndName(String startTime, String name) {
    return where(
      (element) => element.startTime == startTime && element.name == name,
    ).toList();
  }

  String get eventId {
    if (isTournament) {
      return first.name;
    }

    return isNotEmpty ? first.id : "";
  }

  bool get isTournament {
    return length > 1;
  }
}
