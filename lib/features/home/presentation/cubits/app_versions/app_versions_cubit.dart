import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/extensions/app_versions_list.dart';
import '../../../../../core/models/app_version.dart';
import '../../../../../providers/package_info/package_info.dart';
import '../../../domain/usecases/app_versions_usecase.dart';
import 'app_versions_state.dart';

@LazySingleton()
class AppVersionsCubit extends Cubit<AppVersionsState> {
  final AppVersionsUseCase useCase;
  final PackageInfo packageInfo;
  AppVersionsCubit(this.useCase, this.packageInfo)
      : super(AppVersionsInitial());

  Future<void> call() async {
    final response = await useCase.call(Platform.operatingSystem.toLowerCase());
    response.fold((l) => emit(AppVersionsError(l)), (r) async {
      await packageInfo.init();
      emit(AppVersionsLoaded(r));
    });
  }

  AppVersion? get getNewVersion {
    if (state is AppVersionsLoaded) {
      final versions = (state as AppVersionsLoaded).response.items;
      final currentVersionCode = packageInfo.buildNumber;
      final newestVersion = versions.getTheNewest;

      if ((newestVersion?.versionCode ?? 0) > currentVersionCode) {
        return newestVersion;
      }
    }

    return null;
  }
}
