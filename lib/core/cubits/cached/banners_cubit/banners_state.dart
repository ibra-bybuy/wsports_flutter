// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:watch_sports/core/models/banner.dart';

class CachedBannersState extends Equatable {
  final List<Banner> items;
  const CachedBannersState({
    this.items = const [],
  });

  CachedBannersState copyWith({
    List<Banner>? items,
  }) {
    return CachedBannersState(
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

  factory CachedBannersState.fromMap(Map<String, dynamic> map) {
    return CachedBannersState(
      items: List<Banner>.from(
        ((map['items'] ?? const <Banner>[]) as List).map<Banner>((x) {
          return Banner.fromMap(
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
