import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/errors/failures.dart';
import 'package:watch_sports/features/fighter/data/models/fighter_dto.dart';
import 'fighter_source.dart';

@LazySingleton(as: FighterSource)
class FighterNetworkSource implements FighterSource {
  @override
  Future<FighterDto> getFighterByName(String name) async {
    try {
      throw UnimplementedError();
    } catch (e) {
      throw const UnknownFailure();
    }
  }
}
