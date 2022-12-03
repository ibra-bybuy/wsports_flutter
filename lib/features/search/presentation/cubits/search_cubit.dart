import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/features/search/domain/usecases/search_usecase.dart';
import '../../../../core/cubits/cached/event_list_cubit/event_list_cubit.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/functions/debouncer.dart';
import '../../../../core/models/pagination.dart';
import '../../../../providers/pagination/pagination_provider.dart';
import '../../../home/domain/entities/events_response_entities.dart';
import '../../domain/entities/search_entities.dart';
import 'search_state.dart';

@Injectable()
class SearchCubit extends Cubit<SearchState> {
  final SearchUsecase useCase;
  late final PaginationProvider paginationProvider;
  SearchCubit(this.useCase) : super(SearchInitial()) {
    paginationProvider =
        PaginationProvider(limit: 5, page: 1, request: _onPagination);
  }

  final eventsCubit = EventListCubit("search_events");

  SearchEntities _entities = const SearchEntities();
  String get currentQuery => _entities.query.trim();
  final debouncer = Debouncer(milliseconds: 400);

  void onChanged(String str) {
    _entities = _entities.copyWith(query: str);
    debouncer.run(() {
      if (str.trim().isNotEmpty) {
        call();
      } else {
        eventsCubit.setEvents([]);
      }
    });
  }

  Future<Either<Failure, EventsResponseEntities>> call({
    int? limit,
    int? page,
    void Function(EventsResponseEntities)? onSuccessEmit,
  }) async {
    _entities = _entities.copyWith(
      limit: limit ?? 5,
      page: page ?? 1,
    );
    final response = await useCase.call(_entities);
    response.fold((l) => emit(SearchError(l)), (r) {
      if (onSuccessEmit != null) {
        onSuccessEmit(r);
      } else {
        paginationProvider.clear();
        eventsCubit.setEvents(r.items);
        emit(SearchLoaded(r));
      }
    });
    return response;
  }

  Future<int> _onPagination(Pagination pagination) async {
    final res = await call(
      limit: pagination.limit,
      page: pagination.currentPage,
      onSuccessEmit: (r) {
        eventsCubit.addEvents(r.items);
        emit(SearchLoaded(r));
      },
    );

    return res.fold((l) => 0, (r) => r.items.length);
  }
}
