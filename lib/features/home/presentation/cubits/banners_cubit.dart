import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/features/home/domain/usecases/banners_usecase.dart';
import 'package:watch_sports/features/home/presentation/cubits/banners_state.dart';

import '../../../../core/cubits/cached/banners_cubit/banners_cubit.dart';

@LazySingleton()
class BannersCubit extends Cubit<BannersState> {
  final BannersUseCase useCase;
  final CachedBannersCubit cachedBannersCubit;
  BannersCubit(this.useCase, this.cachedBannersCubit) : super(BannersInitial());

  Future<void> call() async {
    final response = await useCase.call();
    response.fold((l) => emit(BannersError(l)), (r) {
      cachedBannersCubit.setItems(r.items);
      emit(BannersLoaded(r));
    });
  }
}
