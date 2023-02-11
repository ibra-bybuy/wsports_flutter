// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import '../../../../core/models/pagination.dart';
import '../../../../core/models/tournament.dart';

class TournamentsResponseEntities extends Equatable {
  final List<Tournament> items;
  final Pagination meta;
  const TournamentsResponseEntities({
    this.items = const [],
    this.meta = const Pagination(),
  });

  TournamentsResponseEntities copyWith({
    List<Tournament>? items,
    Pagination? meta,
  }) {
    return TournamentsResponseEntities(
      items: items ?? this.items,
      meta: meta ?? this.meta,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [items, meta];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': items.map((x) {
        return x.toMap();
      }).toList(growable: false),
      'meta': meta.toMap(),
    };
  }

  factory TournamentsResponseEntities.fromMap(Map<String, dynamic> map) {
    return TournamentsResponseEntities(
      items: List<Tournament>.from(
        ((map['items'] ?? const <Tournament>[]) as List).map<Tournament>((x) {
          return Tournament.fromMap(
              (x ?? Map<String, dynamic>.from({})) as Map<String, dynamic>);
        }),
      ),
      meta: Pagination.fromMap((map["meta"] ?? Map<String, dynamic>.from({}))
          as Map<String, dynamic>),
    );
  }
}
