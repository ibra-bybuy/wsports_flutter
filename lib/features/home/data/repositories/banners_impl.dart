import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/models/banner.dart';
import 'package:watch_sports/features/home/domain/entities/banners_response_entities.dart';
import 'package:watch_sports/core/errors/failures.dart';
import 'package:watch_sports/features/home/domain/repositories/banners_repository.dart';

import '../sources/banners_source.dart';

@LazySingleton(as: BannersRepository)
class BannersRepositoryImpl implements BannersRepository {
  final BannersSource source;
  const BannersRepositoryImpl(this.source);

  @override
  Future<Either<Failure, BannersResponseEntities>> call() async {
    try {
      const response = BannersResponseEntities(items: [
        Banner(
          imageUrl:
              "https://dmxg5wxfqgb4u.cloudfront.net/styles/background_image_xl_2x/s3/image/2022-08/102222-ufc-280-oliveira-vs-makhachev-SG-hero.jpg?h=d1cb525d&itok=mq2sGVn9",
        ),
        Banner(
            imageUrl:
                "https://dmxg5wxfqgb4u.cloudfront.net/styles/background_image_xl/s3/2022-09/102922-ufc-fight-night-kattar-vs-allen-BA-hero.jpg?h=d1cb525d&itok=U65ES4VK")
      ]);

      return const Right(response);
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
