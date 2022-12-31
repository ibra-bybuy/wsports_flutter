// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import '../../../../core/models/app_version.dart';

class AppVersionsResponseEntities extends Equatable {
  final List<AppVersion> items;
  const AppVersionsResponseEntities({
    this.items = const [],
  });

  AppVersionsResponseEntities copyWith({
    List<AppVersion>? items,
  }) {
    return AppVersionsResponseEntities(
      items: items ?? this.items,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': items.map((x) {
        return x.toMap();
      }).toList(growable: false),
    };
  }

  factory AppVersionsResponseEntities.fromMap(Map<String, dynamic> map) {
    return AppVersionsResponseEntities(
      items: List<AppVersion>.from(
        ((map['items'] ?? const <AppVersion>[]) as List).map<AppVersion>((x) {
          return AppVersion.fromMap(
              (x ?? Map<String, dynamic>.from({})) as Map<String, dynamic>);
        }),
      ),
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [items];
}
