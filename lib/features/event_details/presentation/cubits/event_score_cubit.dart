import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/cubits/fetch_state.dart';
import 'package:watch_sports/features/event_details/domain/usecases/event_score_usecase.dart';
import '../../../../core/cubits/cached/event_scores/event_scores_cubit.dart';
import '../../../../core/models/event.dart';
import '../../../../core/models/event_score.dart';

@LazySingleton()
class EventScoreCubit extends Cubit<FetchState<List<EventScore>>> {
  final EventScoreUsecase usecase;
  final CachedEventScoresCubit cachedEventScoresCubit;
  EventScoreCubit(
    this.usecase,
    this.cachedEventScoresCubit,
  ) : super(FetchInitial());

  Future<void> call(EventType type) async {
    usecase.getScore(type.str, (scores) {
      emit(FetchLoading());
      emit(FetchLoaded(scores));
      cachedEventScoresCubit.addItems(scores);
    });
  }

  Future<void> dispose() async {
    await usecase.dispose();
  }
}
