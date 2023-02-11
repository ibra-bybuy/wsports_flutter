import 'package:flutter/material.dart';
import 'package:watch_sports/core/components/listview/listview_builder.dart';
import 'package:watch_sports/core/models/tournament.dart';
import 'package:watch_sports/features/tournaments/presentation/widgets/tournament_card.dart';

class TournamentsListCard extends StatelessWidget {
  final List<Tournament> items;
  final ScrollController? controller;
  const TournamentsListCard(this.items, {super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    items.sort((a, b) => a.name.compareTo(b.name));

    return CustomListViewBuilder<Tournament>(
      controller: controller,
      items: items,
      itemBuilder: (context, index, item) {
        return TournamentCard(item);
      },
    );
  }
}
