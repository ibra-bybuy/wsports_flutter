import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/models/fighter.dart';
import 'cached_fighter_state.dart';

@Injectable()
class CachedFighterCubit extends HydratedCubit<CachedFighterState> {
  final String fighterId;
  CachedFighterCubit(@factoryParam this.fighterId)
      : super(const CachedFighterState());

  void setFighter(Fighter fighter) {
    emit(CachedFighterState(fighter: fighter));
  }

  @override
  String get id => fighterId;

  @override
  CachedFighterState? fromJson(Map<String, dynamic> json) =>
      CachedFighterState.fromMap(json);

  @override
  Map<String, dynamic>? toJson(CachedFighterState state) => state.toMap();
}
