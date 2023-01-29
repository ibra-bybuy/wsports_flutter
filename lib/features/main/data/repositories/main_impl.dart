import 'package:injectable/injectable.dart';

import '../../domain/repositories/main_repository.dart';
import '../sources/main_source.dart';

@LazySingleton(as: MainRepository)
class MainRepositoryImpl implements MainRepository {
  final MainSource source;

  const MainRepositoryImpl(this.source);
}
