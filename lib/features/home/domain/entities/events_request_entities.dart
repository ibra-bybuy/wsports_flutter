// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class EventsRequestEntities extends Equatable {
  final String type;
  final int limit;
  final int page;
  const EventsRequestEntities({
    this.type = '',
    this.limit = 0,
    this.page = 0,
  });

  EventsRequestEntities copyWith({
    String? type,
    int? limit,
    int? page,
  }) {
    return EventsRequestEntities(
      type: type ?? this.type,
      limit: limit ?? this.limit,
      page: page ?? this.page,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'limit': limit,
      'page': page,
    };
  }

  factory EventsRequestEntities.fromMap(Map<String, dynamic> map) {
    return EventsRequestEntities(
      type: (map["type"] ?? '') as String,
      limit: (map["limit"] ?? 0) as int,
      page: (map["page"] ?? 0) as int,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [type, limit, page];
}
