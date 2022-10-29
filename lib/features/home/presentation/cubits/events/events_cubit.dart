import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/cubits/cached/home_events_cubit/home_events_cubit.dart';
import 'package:watch_sports/features/home/presentation/cubits/events/events_state.dart';

import '../../../../../setup.dart';
import '../../../domain/usecases/events_usecase.dart';
import '../../widgets/categories.dart';

@LazySingleton()
class EventsCubit extends Cubit<EventsState> {
  final EventsUseCase useCase;
  EventsCubit(this.useCase) : super(EventsInitial());

  String _currentCategoryValue = "";

  final Map<String, HomeEventsCubit> _cubits = {
    "": getIt<HomeEventsCubit>(param1: ""),
    CategoryEnum.football.value:
        getIt<HomeEventsCubit>(param1: CategoryEnum.football.value),
    CategoryEnum.basketball.value:
        getIt<HomeEventsCubit>(param1: CategoryEnum.basketball.value),
    CategoryEnum.mma.value:
        getIt<HomeEventsCubit>(param1: CategoryEnum.mma.value),
    CategoryEnum.tennis.value:
        getIt<HomeEventsCubit>(param1: CategoryEnum.tennis.value),
  };

  HomeEventsCubit get getCurrentCategoryCubit =>
      _cubits[_currentCategoryValue] ?? _cubits[""]!;

  Future<void> call({String category = ""}) async {
    _currentCategoryValue = category;
    final response = await useCase.call(_currentCategoryValue);
    response.fold((l) => emit(EventsError(l)), (r) {
      getCurrentCategoryCubit.setEvents(r.items);
      emit(EventsLoaded(r));
    });
  }
}
