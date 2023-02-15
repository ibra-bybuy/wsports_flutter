import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/cubits/cached/event_list_cubit/event_list_cubit.dart';
import 'package:watch_sports/core/functions/date_functions.dart';
import 'package:watch_sports/core/models/pagination.dart';
import 'package:watch_sports/features/home/presentation/cubits/events/events_state.dart';

import '../../../../../core/errors/failures.dart';
import '../../../../../providers/pagination/pagination_provider.dart';
import '../../../../../setup.dart';
import '../../../domain/entities/events_request_entities.dart';
import '../../../domain/entities/events_response_entities.dart';
import '../../../domain/usecases/events_usecase.dart';
import '../../widgets/categories.dart';

@LazySingleton()
class EventsCubit extends Cubit<EventsState> {
  final EventsUseCase useCase;
  late final PaginationProvider paginationProvider;
  EventsCubit(this.useCase) : super(EventsInitial()) {
    paginationProvider =
        PaginationProvider(limit: 20, page: 1, request: _onPagination);
  }

  String _currentCategoryValue = "";

  final Map<String, EventListCubit> _cubits = {
    "": getIt<EventListCubit>(param1: ""),
    CategoryEnum.football.value:
        getIt<EventListCubit>(param1: CategoryEnum.football.value),
    CategoryEnum.basketball.value:
        getIt<EventListCubit>(param1: CategoryEnum.basketball.value),
    CategoryEnum.mma.value:
        getIt<EventListCubit>(param1: CategoryEnum.mma.value),
    CategoryEnum.tennis.value:
        getIt<EventListCubit>(param1: CategoryEnum.tennis.value),
  };

  EventListCubit get getCurrentCategoryCubit =>
      _cubits[_currentCategoryValue] ?? _cubits[""]!;

  EventsRequestEntities _entities = const EventsRequestEntities();

  Future<Either<Failure, EventsResponseEntities>> call({
    String? category,
    String? date,
    int? limit,
    int? page,
    void Function(EventsResponseEntities)? onSuccessEmit,
  }) async {
    emit(EventsLoading());
    _currentCategoryValue = category ?? _currentCategoryValue;
    _entities = _entities.copyWith(
      type: _currentCategoryValue,
      date: date ??
          DateFunctions(passedDate: DateTime.now().toUtc())
              .yearMonthDayHoursSecsMilliSecs(),
      limit: limit ?? 20,
      page: page ?? 1,
    );
    final response = await useCase.call(_entities);
    response.fold((l) => emit(EventsError(l)), (r) {
      if (onSuccessEmit != null) {
        onSuccessEmit(r);
      } else {
        paginationProvider.clear();
        paginationProvider.setTotalPages(r.pagination.totalPages);
        getCurrentCategoryCubit.setEvents(r.items);
        emit(EventsLoaded(r));
      }
    });
    return response;
  }

  Future<int> _onPagination(Pagination pagination) async {
    final res = await call(
        category: _entities.type,
        date: _entities.date,
        limit: pagination.limit,
        page: pagination.currentPage,
        onSuccessEmit: (r) {
          emit(EventsLoaded(r));
          getCurrentCategoryCubit.addEvents(r.items);
        });

    return res.fold((l) => 0, (r) => r.items.length);
  }
}
