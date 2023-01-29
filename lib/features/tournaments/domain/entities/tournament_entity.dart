import 'package:equatable/equatable.dart';

import '../../../../core/models/tournament.dart';

class TournamentEntities extends Equatable {
  final List<Tournament> items;
  const TournamentEntities({
    this.items = const [],
  });

  TournamentEntities copyWith({
    List<Tournament>? items,
  }) {
    return TournamentEntities(
      items: items ?? this.items,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [items];
}
