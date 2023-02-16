import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/cubits/fetch_state.dart';
import 'package:watch_sports/features/home/domain/usecases/banners_usecase.dart';

import '../../../../core/cubits/cached/banners_cubit/banners_cubit.dart';
import '../../domain/entities/banners_response_entities.dart';

@LazySingleton()
class BannersCubit extends Cubit<FetchState<BannersResponseEntities>> {
  final BannersUseCase useCase;
  final CachedBannersCubit cachedBannersCubit;
  BannersCubit(this.useCase, this.cachedBannersCubit) : super(FetchInitial());

  Future<void> call() async {
    emit(FetchInitial());
    final response = await useCase.call();
    response.fold((l) => emit(FetchError(l)), (r) {
      cachedBannersCubit.setItems(r.items);
      emit(FetchLoaded(r));
    });
  }
}
