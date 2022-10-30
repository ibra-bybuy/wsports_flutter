// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/cubits/cached/banners_cubit/banners_cubit.dart' as _i6;
import 'core/cubits/cached/home_events_cubit/home_events_cubit.dart' as _i15;
import 'core/cubits/cached/urls_cubit/urls_cubit.dart' as _i21;
import 'core/cubits/cached/user_cubit/user_cubit.dart' as _i22;
import 'features/comment_section/data/repositories/comment_section_impl.dart'
    as _i30;
import 'features/comment_section/data/sources/comment_section_source.dart'
    as _i7;
import 'features/comment_section/data/sources/comment_section_websocket.dart'
    as _i8;
import 'features/comment_section/domain/repositories/comment_section_repository.dart'
    as _i29;
import 'features/comment_section/domain/usecases/comment_section_usecase.dart'
    as _i31;
import 'features/comment_section/presentation/cubits/comment_section_cubit.dart'
    as _i28;
import 'features/event_details/data/repositories/event_details_impl.dart'
    as _i33;
import 'features/event_details/data/sources/event_details_network.dart' as _i11;
import 'features/event_details/data/sources/event_details_source.dart' as _i10;
import 'features/event_details/domain/repositories/event_details_repository.dart'
    as _i32;
import 'features/event_details/domain/usecases/event_details_usecase.dart'
    as _i34;
import 'features/event_details/presentation/cubits/event_details_cubit.dart'
    as _i9;
import 'features/home/data/repositories/banners_impl.dart' as _i26;
import 'features/home/data/repositories/events_impl.dart' as _i13;
import 'features/home/data/sources/banners_network.dart' as _i5;
import 'features/home/data/sources/banners_source.dart' as _i4;
import 'features/home/domain/repositories/banners_repository.dart' as _i25;
import 'features/home/domain/repositories/events_repository.dart' as _i12;
import 'features/home/domain/usecases/banners_usecase.dart' as _i27;
import 'features/home/domain/usecases/events_usecase.dart' as _i14;
import 'features/home/presentation/cubits/banners_cubit.dart' as _i39;
import 'features/home/presentation/cubits/events/events_cubit.dart' as _i35;
import 'features/settings/data/repositories/settings_impl.dart' as _i37;
import 'features/settings/data/sources/settings_network.dart' as _i20;
import 'features/settings/data/sources/settings_source.dart' as _i19;
import 'features/settings/domain/repositories/settings_repository.dart' as _i36;
import 'features/settings/domain/usecases/settings_usecase.dart' as _i38;
import 'features/settings/presentation/cubits/settings_cubit.dart' as _i18;
import 'providers/logger/logger_provider.dart' as _i16;
import 'providers/logger/my_logger.dart' as _i17;
import 'providers/websocket/socket_io.dart' as _i24;
import 'providers/websocket/websocket_provider.dart' as _i23;
import 'router/app_router.dart' as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.singleton<_i3.AppRouter>(_i3.AppRouter());
  gh.lazySingleton<_i4.BannersSource>(() => _i5.BannersNetworkSource());
  gh.lazySingleton<_i6.CachedBannersCubit>(() => _i6.CachedBannersCubit());
  gh.lazySingleton<_i7.CommentSectionSource>(
      () => _i8.CommentSectionWebsocketSource());
  gh.factory<_i9.EventDetailsCubit>(() => _i9.EventDetailsCubit());
  gh.lazySingleton<_i10.EventDetailsSource>(
      () => _i11.EventDetailsNetworkSource());
  gh.lazySingleton<_i12.EventsRepository>(
      () => _i13.EventsRepositoryImpl(get<_i4.BannersSource>()));
  gh.lazySingleton<_i14.EventsUseCase>(
      () => _i14.EventsUseCase(get<_i12.EventsRepository>()));
  gh.factoryParam<_i15.HomeEventsCubit, String, dynamic>((
    key,
    _,
  ) =>
      _i15.HomeEventsCubit(key));
  gh.singleton<_i16.LoggerProvider>(_i17.MyLogger());
  gh.factory<_i18.SettingsCubit>(() => _i18.SettingsCubit());
  gh.lazySingleton<_i19.SettingsSource>(() => _i20.SettingsNetworkSource());
  gh.lazySingleton<_i21.UrlsCubit>(() => _i21.UrlsCubit());
  gh.lazySingleton<_i22.UserCubit>(() => _i22.UserCubit());
  gh.factory<_i23.WebSocketProvider>(
    () => _i24.SocketIo(get<_i16.LoggerProvider>()),
    instanceName: 'SocketIoImpl',
  );
  gh.lazySingleton<_i25.BannersRepository>(
      () => _i26.BannersRepositoryImpl(get<_i4.BannersSource>()));
  gh.lazySingleton<_i27.BannersUseCase>(
      () => _i27.BannersUseCase(get<_i25.BannersRepository>()));
  gh.lazySingleton<_i28.CommentSectionCubit>(() => _i28.CommentSectionCubit(
        get<_i22.UserCubit>(),
        get<_i23.WebSocketProvider>(instanceName: 'SocketIoImpl'),
        get<_i21.UrlsCubit>(),
      ));
  gh.lazySingleton<_i29.CommentSectionRepository>(
      () => _i30.CommentSectionRepositoryImpl(get<_i7.CommentSectionSource>()));
  gh.lazySingleton<_i31.CommentSectionUsecase>(
      () => _i31.CommentSectionUsecase(get<_i29.CommentSectionRepository>()));
  gh.lazySingleton<_i32.EventDetailsRepository>(
      () => _i33.EventDetailsRepositoryImpl(get<_i10.EventDetailsSource>()));
  gh.lazySingleton<_i34.EventDetailsUsecase>(
      () => _i34.EventDetailsUsecase(get<_i32.EventDetailsRepository>()));
  gh.lazySingleton<_i35.EventsCubit>(
      () => _i35.EventsCubit(get<_i14.EventsUseCase>()));
  gh.lazySingleton<_i36.SettingsRepository>(
      () => _i37.SettingsRepositoryImpl(get<_i19.SettingsSource>()));
  gh.lazySingleton<_i38.SettingsUsecase>(
      () => _i38.SettingsUsecase(get<_i36.SettingsRepository>()));
  gh.lazySingleton<_i39.BannersCubit>(() => _i39.BannersCubit(
        get<_i27.BannersUseCase>(),
        get<_i6.CachedBannersCubit>(),
      ));
  return get;
}
