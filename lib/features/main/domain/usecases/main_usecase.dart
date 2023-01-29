import 'package:injectable/injectable.dart';

import '../repositories/main_repository.dart';

@LazySingleton()
class MainUsecase implements MainRepository {
  final MainRepository repository;
  const MainUsecase(this.repository);
}
