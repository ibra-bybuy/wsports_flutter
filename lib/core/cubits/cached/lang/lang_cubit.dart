import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import './lang_state.dart';

@LazySingleton()
class CachedLangCubit extends HydratedCubit<LangState> {
  CachedLangCubit() : super(const LangState());

  void setLangCode(String code) {
    emit(LangState(langCode: code));
  }

  @override
  LangState? fromJson(Map<String, dynamic> json) => LangState.fromMap(json);
  @override
  Map<String, dynamic>? toJson(LangState state) => state.toMap();
}
