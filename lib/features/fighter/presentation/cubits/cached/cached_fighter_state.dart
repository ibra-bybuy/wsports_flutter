// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import '../../../../../core/models/fighter.dart';

class CachedFighterState extends Equatable {
  final Fighter fighter;
  const CachedFighterState({
    this.fighter = const Fighter(),
  });

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [fighter];

  CachedFighterState copyWith({
    Fighter? fighter,
  }) {
    return CachedFighterState(
      fighter: fighter ?? this.fighter,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fighter': fighter.toMap(),
    };
  }

  factory CachedFighterState.fromMap(Map<String, dynamic> map) {
    return CachedFighterState(
      fighter: Fighter.fromMap((map["fighter"] ?? Map<String, dynamic>.from({}))
          as Map<String, dynamic>),
    );
  }
}
