import 'package:flutter/material.dart';
import 'package:watch_sports/core/extensions/fight_history_item.dart';
import 'package:watch_sports/core/models/team.dart';
import 'package:watch_sports/features/fighter/presentation/widgets/fight_info_card.dart';
import '../../../../core/models/fight.dart';
import '../../../../router/app_router.dart';
import '../../../../setup.dart';
import '../../../home/presentation/widgets/event_team.dart';

class FightCard extends StatelessWidget {
  final Fight fight;
  const FightCard(this.fight, {super.key});

  void openFighter(Team item, String title) {
    getIt<AppRouter>().push(
      FighterRoute(
        item: item,
        opponent: const Team(),
        title: title,
        searchByAvatar: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: fight.isFinished
          ? const Color.fromARGB(255, 40, 38, 43)
          : const Color.fromARGB(255, 38, 35, 55),
      elevation: 3.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (fight.fighters.isNotEmpty) ...[
              Flexible(
                flex: 4,
                child: GestureDetector(
                  onTap: () => openFighter(
                      fight.fighters.first.toTeam(), fight.fighters.first.name),
                  child: EventTeamCard(
                    title: fight.fighters.first.name,
                    imageUrl: fight.fighters.first.picture,
                    titleColor: Colors.white,
                    showWon: fight.fighters.first.won,
                  ),
                ),
              ),
            ],
            const SizedBox(width: 15.0),
            Flexible(
              flex: 4,
              child: FightInfoCard(fight),
            ),
            const SizedBox(width: 15.0),
            if (fight.fighters.isNotEmpty) ...[
              Flexible(
                flex: 4,
                child: GestureDetector(
                  onTap: () => openFighter(
                      fight.fighters.last.toTeam(), fight.fighters.last.name),
                  child: EventTeamCard(
                    title: fight.fighters.last.name,
                    imageUrl: fight.fighters.last.picture,
                    titleColor: Colors.white,
                    showWon: fight.fighters.last.won,
                  ),
                ),
              )
            ],
          ],
        ),
      ),
    );
  }
}
