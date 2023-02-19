import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/cubits/fetch_state.dart';
import 'package:watch_sports/features/fighter/presentation/cubits/cached/cached_fighter_cubit.dart';
import 'package:watch_sports/features/fighter/presentation/cubits/fights_cubit.dart';

import '../../../../core/models/fighter.dart';
import '../../../../core/models/team.dart';
import '../../../../setup.dart';
import '../../domain/usecases/fighter_usecase.dart';

@Injectable()
class FighterCubit extends Cubit<FetchState<Fighter>> {
  final FighterUsecase usecase;
  late final CachedFighterCubit cachedFighter;
  late final FightsCubit fightsCubit;
  FighterCubit(
    this.usecase,
    this.fightsCubit,
  ) : super(FetchInitial());

  Future<void> call(String query, String opponentName,
      {String? secondTryQuery}) async {
    emit(FetchLoading());
    final res = await usecase.searchFighter(query, opponentName);
    res.fold((l) {
      if (l.statusCode == 404 && secondTryQuery != null) {
        call(secondTryQuery, opponentName);
        return;
      }

      emit(FetchError(l));
    }, (r) {
      cachedFighter.setFighter(r);
      emit(FetchLoaded(r));
    });
  }

  void setTeam(Team team) {
    cachedFighter = getIt<CachedFighterCubit>(param1: team.avatarUrl);
    fightsCubit.setCachedFighter(cachedFighter);
  }
}
