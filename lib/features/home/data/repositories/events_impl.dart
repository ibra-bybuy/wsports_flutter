import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/models/event.dart';
import 'package:watch_sports/core/errors/failures.dart';
import 'package:watch_sports/core/models/team.dart';
import 'package:watch_sports/features/home/domain/entities/events_response_entities.dart';
import 'package:watch_sports/features/home/domain/repositories/events_repository.dart';

import '../sources/banners_source.dart';

@LazySingleton(as: EventsRepository)
class EventsRepositoryImpl implements EventsRepository {
  final BannersSource source;
  const EventsRepositoryImpl(this.source);

  @override
  Future<Either<Failure, EventsResponseEntities>> call(String category) async {
    try {
      final List<Event> items = [];

      if (category == "" || category == "football") {
        items.add(
          const Event(
            id: "1",
            name: "Premiere League",
            startTime: "2022-10-20 13:27:00",
            team1: Team(
                name: "Chelsea",
                avatarUrl:
                    "https://pluspng.com/img-png/chelsea-logo-png-img-free-png-chelsea-logo-png-97-images-in-collection-page-900x520.jpg"),
            team2: Team(
                name: "Leister",
                avatarUrl:
                    "https://toplogos.ru/images/logo-leicester-city-fc.png"),
          ),
        );
      }

      if (category == "" || category == "mma") {
        items.add(
          const Event(
            id: "2",
            name: "UFC 280",
            startTime: "2022-10-20 17:27:00",
            team1: Team(
              name: "Oliveira",
              avatarUrl:
                  "https://avatars.mds.yandex.net/i?id=5e423f1d68d686b485a6b8a4b68c74c8-5479412-images-thumbs&n=13&exp=1",
            ),
            team2: Team(
              name: "Makhachev",
              avatarUrl:
                  "https://fightnewslaravel.s3.fr-par.scw.cloud/files/12/ce/779a48dac1959e16ecb1f88b40900b73.jpeg",
            ),
          ),
        );
      }

      final response = EventsResponseEntities(
        items: items,
      );

      return Right(response);
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
