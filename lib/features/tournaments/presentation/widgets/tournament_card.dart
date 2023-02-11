import 'package:flutter/material.dart';
import 'package:watch_sports/core/components/text/google_text.dart';
import 'package:watch_sports/core/models/tournament.dart';
import 'package:watch_sports/features/tournaments/presentation/widgets/tournament_icon.dart';
import 'package:watch_sports/router/app_router.dart';
import 'package:watch_sports/setup.dart';

class TournamentCard extends StatelessWidget {
  final Tournament item;
  const TournamentCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        getIt<AppRouter>().push(SearchRoute(
          initialQuery: item.name,
          showSearch: false,
          titleText: item.name,
          showPreviousResults: false,
        ));
      },
      child: Card(
        elevation: 0.3,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TournamentIcon(item.name),
              const SizedBox(width: 8.0),
              Expanded(
                child: GoogleText(
                  item.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                width: 5.0,
              ),
              const Icon(
                Icons.arrow_right_sharp,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
