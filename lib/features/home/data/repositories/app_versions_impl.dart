import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/features/home/domain/entities/app_versions_response_entities.dart';
import 'package:watch_sports/core/errors/failures.dart';

import '../../domain/repositories/app_versions_repository.dart';
import '../sources/app_versions_source.dart';

@LazySingleton(as: AppVersionsRepository)
class AppVersionsRepositoryImpl implements AppVersionsRepository {
  final AppVersionsSource source;
  const AppVersionsRepositoryImpl(this.source);

  @override
  Future<Either<Failure, AppVersionsResponseEntities>> call(
      String platform) async {
    try {
      final response = await source.call(platform);

      return Right(
        AppVersionsResponseEntities(
          items: response.data
              .map((e) => e.copyWith(url: "http://192.168.0.103:3006${e.url}"))
              .toList(),
        ),
      );
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
