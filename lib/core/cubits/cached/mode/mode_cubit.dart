import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import 'mode_state.dart';

@LazySingleton()
class ModeCubit extends HydratedCubit<ModeState> {
  ModeCubit() : super(const ModeState(mode: ThemeMode.system));

  void setMode(ThemeMode mode) {
    emit(ModeState(mode: mode));
  }

  @override
  ModeState? fromJson(Map<String, dynamic> json) => ModeState.fromMap(json);

  @override
  Map<String, dynamic>? toJson(ModeState state) => state.toMap();
}
