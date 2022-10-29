import 'package:flutter_bloc/flutter_bloc.dart';

class BoolCubit extends Cubit<bool> {
  BoolCubit(bool enabled) : super(enabled);

  void set(bool enabled) {
    emit(enabled);
  }

  bool get enabled => state;
}
