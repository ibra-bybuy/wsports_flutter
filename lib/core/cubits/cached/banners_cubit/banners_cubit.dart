import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/cubits/cached/banners_cubit/banners_state.dart';

import '../../../models/banner.dart';

@LazySingleton()
class CachedBannersCubit extends HydratedCubit<CachedBannersState> {
  CachedBannersCubit() : super(const CachedBannersState());

  void setItems(List<Banner> banners) {
    emit(CachedBannersState(items: banners));
  }

  @override
  CachedBannersState? fromJson(Map<String, dynamic> json) =>
      CachedBannersState.fromMap(json);

  @override
  Map<String, dynamic>? toJson(CachedBannersState state) => state.toMap();
}
