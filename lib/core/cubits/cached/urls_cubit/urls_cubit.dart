import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/constants/urls.dart';
import './urls_state.dart';

@LazySingleton()
class UrlsCubit extends HydratedCubit<UrlsState> {
  UrlsCubit() : super(const UrlsState()) {
    _init();
  }

  void _init() {
    emit(const UrlsState(
        baseApiUrl: Urls.apiUrl, commentsUrl: Urls.commentsSocket));
  }

  @override
  UrlsState? fromJson(Map<String, dynamic> json) => UrlsState.fromMap(json);

  @override
  Map<String, dynamic>? toJson(UrlsState state) => state.toMap();
}
