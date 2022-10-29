import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/i18n/i18n.dart';
import 'user_state.dart';

@LazySingleton()
class UserCubit extends HydratedCubit<UserState> {
  UserCubit() : super(const UserState());

  bool get isAuthorized => state.user != null;
  String get name => state.user?.name ?? localizationInstance.defaultName;

  @override
  UserState? fromJson(Map<String, dynamic> json) => UserState.fromMap(json);

  @override
  Map<String, dynamic>? toJson(UserState state) => state.toMap();
}
