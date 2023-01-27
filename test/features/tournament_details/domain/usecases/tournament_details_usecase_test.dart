import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:watch_sports/features/tournament_details/domain/entities/tournament_details_response_entities.dart';
import 'package:watch_sports/features/tournament_details/domain/repositories/tournament_details_repository.dart';
import 'package:watch_sports/features/tournament_details/domain/usecases/tournament_details_usecase.dart';

@GenerateNiceMocks([MockSpec<TournamentDetailsRepository>()])
import 'tournament_details_usecase_test.mocks.dart';

void main() {
  late TournamentDetailsUsecase usecase;
  late MockTournamentDetailsRepository repository;

  setUp(() {
    repository = MockTournamentDetailsRepository();
    usecase = TournamentDetailsUsecase(repository);
  });

  const name = "name";
  const startTime = "time";
  const details = TournamentDetailsResponseEntities();

  test("Should get tournamnt details", () async {
    when(repository.call(name, startTime))
        .thenAnswer((realInvocation) async => const Right(details));

    final result = await usecase.call(name, startTime);

    expect(result, const Right(details));
    verify(repository.call(name, startTime));
    verifyNoMoreInteractions(repository);
  });
}
