// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/api/interceptors/log_interceptor.dart' as _i31;
import 'core/api/main_api.dart' as _i35;
import 'core/cubits/cached/banners_cubit/banners_cubit.dart' as _i7;
import 'core/cubits/cached/event_list_cubit/event_list_cubit.dart' as _i13;
import 'core/cubits/cached/urls_cubit/urls_cubit.dart' as _i25;
import 'core/cubits/cached/user_cubit/user_cubit.dart' as _i26;
import 'features/comment_section/data/repositories/comment_section_impl.dart'
    as _i46;
import 'features/comment_section/data/sources/comment_section_source.dart'
    as _i29;
import 'features/comment_section/data/sources/comment_section_websocket.dart'
    as _i30;
import 'features/comment_section/domain/repositories/comment_section_repository.dart'
    as _i45;
import 'features/comment_section/domain/usecases/comment_section_usecase.dart'
    as _i47;
import 'features/comment_section/presentation/cubits/comment_section_cubit.dart'
    as _i59;
import 'features/comment_section/presentation/cubits/send_comment/send_comment_cubit.dart'
    as _i64;
import 'features/event_details/data/repositories/event_details_impl.dart'
    as _i33;
import 'features/event_details/data/sources/event_details_network.dart' as _i12;
import 'features/event_details/data/sources/event_details_source.dart' as _i11;
import 'features/event_details/domain/repositories/event_details_repository.dart'
    as _i32;
import 'features/event_details/domain/usecases/event_details_usecase.dart'
    as _i34;
import 'features/event_details/presentation/cubits/event_details_cubit.dart'
    as _i10;
import 'features/home/data/repositories/app_versions_impl.dart' as _i54;
import 'features/home/data/repositories/banners_impl.dart' as _i57;
import 'features/home/data/repositories/events_impl.dart' as _i61;
import 'features/home/data/sources/app_versions_network.dart' as _i42;
import 'features/home/data/sources/app_versions_source.dart' as _i41;
import 'features/home/data/sources/banners_network.dart' as _i44;
import 'features/home/data/sources/banners_source.dart' as _i43;
import 'features/home/data/sources/events_network.dart' as _i49;
import 'features/home/data/sources/events_source.dart' as _i48;
import 'features/home/domain/repositories/app_versions_repository.dart' as _i53;
import 'features/home/domain/repositories/banners_repository.dart' as _i56;
import 'features/home/domain/repositories/events_repository.dart' as _i60;
import 'features/home/domain/usecases/app_versions_usecase.dart' as _i55;
import 'features/home/domain/usecases/banners_usecase.dart' as _i58;
import 'features/home/domain/usecases/events_usecase.dart' as _i62;
import 'features/home/presentation/cubits/app_versions/app_versions_cubit.dart'
    as _i65;
import 'features/home/presentation/cubits/banners_cubit.dart' as _i66;
import 'features/home/presentation/cubits/events/events_cubit.dart' as _i67;
import 'features/search/data/repositories/search_impl.dart' as _i51;
import 'features/search/data/sources/search_network.dart' as _i37;
import 'features/search/data/sources/search_source.dart' as _i36;
import 'features/search/domain/repositories/search_repository.dart' as _i50;
import 'features/search/domain/usecases/search_usecase.dart' as _i52;
import 'features/search/presentation/cubits/search_cubit.dart' as _i63;
import 'features/settings/data/repositories/settings_impl.dart' as _i39;
import 'features/settings/data/sources/settings_network.dart' as _i22;
import 'features/settings/data/sources/settings_source.dart' as _i21;
import 'features/settings/domain/repositories/settings_repository.dart' as _i38;
import 'features/settings/domain/usecases/settings_usecase.dart' as _i40;
import 'features/settings/presentation/cubits/settings_cubit.dart' as _i20;
import 'providers/app_update/app_update.dart' as _i4;
import 'providers/app_update/ota_update.dart' as _i5;
import 'providers/cache_manager/cache_manager.dart' as _i6;
import 'providers/device_info/device_info_plus.dart' as _i9;
import 'providers/device_info/device_info_provider.dart' as _i8;
import 'providers/jwt/comments_token.dart' as _i24;
import 'providers/jwt/token_provider.dart' as _i23;
import 'providers/local_notifications/local_notifications.dart' as _i14;
import 'providers/local_notifications/local_notifications_impl.dart' as _i15;
import 'providers/logger/logger_provider.dart' as _i16;
import 'providers/logger/my_logger.dart' as _i17;
import 'providers/package_info/package_info.dart' as _i18;
import 'providers/package_info/package_info_plus.dart' as _i19;
import 'providers/websocket/socket_io.dart' as _i28;
import 'providers/websocket/websocket_provider.dart' as _i27;
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
  gh.factory<_i4.AppUpdate>(() => _i5.OtaUpdateImpl());
  gh.lazySingleton<_i6.CacheManager>(() => _i6.CacheManager());
  gh.lazySingleton<_i7.CachedBannersCubit>(() => _i7.CachedBannersCubit());
  gh.lazySingleton<_i8.DeviceInfoProvider>(() => _i9.DeviceInfoPlus());
  gh.factory<_i10.EventDetailsCubit>(() => _i10.EventDetailsCubit());
  gh.lazySingleton<_i11.EventDetailsSource>(
      () => _i12.EventDetailsNetworkSource());
  gh.factoryParam<_i13.EventListCubit, String, dynamic>((
    key,
    _,
  ) =>
      _i13.EventListCubit(key));
  gh.lazySingleton<_i14.LocalNotifications>(
      () => _i15.LocalNotificationsImpl());
  gh.singleton<_i16.LoggerProvider>(_i17.MyLogger());
  gh.lazySingleton<_i18.PackageInfo>(() => _i19.PackageInfoPlusImpl());
  gh.factory<_i20.SettingsCubit>(() => _i20.SettingsCubit());
  gh.lazySingleton<_i21.SettingsSource>(() => _i22.SettingsNetworkSource());
  gh.lazySingleton<_i23.TokenProvider>(
    () => _i24.CommentsToken(),
    instanceName: 'CommentsTokenImpl',
  );
  gh.lazySingleton<_i25.UrlsCubit>(() => _i25.UrlsCubit());
  gh.lazySingleton<_i26.UserCubit>(() => _i26.UserCubit());
  gh.factory<_i27.WebSocketProvider>(
    () => _i28.SocketIo(get<_i16.LoggerProvider>()),
    instanceName: 'SocketIoImpl',
  );
  gh.lazySingleton<_i29.CommentSectionSource>(
      () => _i30.CommentSectionWebsocketSource(
            get<_i27.WebSocketProvider>(instanceName: 'SocketIoImpl'),
            get<_i25.UrlsCubit>(),
          ));
  gh.lazySingleton<_i31.CustomLogInterceptor>(
      () => _i31.CustomLogInterceptor(get<_i16.LoggerProvider>()));
  gh.lazySingleton<_i32.EventDetailsRepository>(
      () => _i33.EventDetailsRepositoryImpl(get<_i11.EventDetailsSource>()));
  gh.lazySingleton<_i34.EventDetailsUsecase>(
      () => _i34.EventDetailsUsecase(get<_i32.EventDetailsRepository>()));
  gh.factory<_i35.MainApi>(() => _i35.MainApi(
        get<_i25.UrlsCubit>(),
        get<_i31.CustomLogInterceptor>(),
      ));
  gh.lazySingleton<_i36.SearchSource>(
      () => _i37.SearchNetworkSource(get<_i35.MainApi>()));
  gh.lazySingleton<_i38.SettingsRepository>(
      () => _i39.SettingsRepositoryImpl(get<_i21.SettingsSource>()));
  gh.lazySingleton<_i40.SettingsUsecase>(
      () => _i40.SettingsUsecase(get<_i38.SettingsRepository>()));
  gh.lazySingleton<_i41.AppVersionsSource>(
      () => _i42.AppVersionsNetwork(get<_i35.MainApi>()));
  gh.lazySingleton<_i43.BannersSource>(
      () => _i44.BannersNetworkSource(get<_i35.MainApi>()));
  gh.lazySingleton<_i45.CommentSectionRepository>(() =>
      _i46.CommentSectionRepositoryImpl(get<_i29.CommentSectionSource>()));
  gh.lazySingleton<_i47.CommentSectionUsecase>(
      () => _i47.CommentSectionUsecase(get<_i45.CommentSectionRepository>()));
  gh.lazySingleton<_i48.EventsSource>(
      () => _i49.EventsNetwork(get<_i35.MainApi>()));
  gh.lazySingleton<_i50.SearchRepository>(
      () => _i51.SearchRepositoryImpl(get<_i36.SearchSource>()));
  gh.lazySingleton<_i52.SearchUsecase>(
      () => _i52.SearchUsecase(get<_i50.SearchRepository>()));
  gh.lazySingleton<_i53.AppVersionsRepository>(
      () => _i54.AppVersionsRepositoryImpl(get<_i41.AppVersionsSource>()));
  gh.lazySingleton<_i55.AppVersionsUseCase>(
      () => _i55.AppVersionsUseCase(get<_i53.AppVersionsRepository>()));
  gh.lazySingleton<_i56.BannersRepository>(
      () => _i57.BannersRepositoryImpl(get<_i43.BannersSource>()));
  gh.lazySingleton<_i58.BannersUseCase>(
      () => _i58.BannersUseCase(get<_i56.BannersRepository>()));
  gh.lazySingleton<_i59.CommentSectionCubit>(() => _i59.CommentSectionCubit(
        get<_i47.CommentSectionUsecase>(),
        get<_i23.TokenProvider>(instanceName: 'CommentsTokenImpl'),
      ));
  gh.lazySingleton<_i60.EventsRepository>(
      () => _i61.EventsRepositoryImpl(get<_i48.EventsSource>()));
  gh.lazySingleton<_i62.EventsUseCase>(
      () => _i62.EventsUseCase(get<_i60.EventsRepository>()));
  gh.factory<_i63.SearchCubit>(
      () => _i63.SearchCubit(get<_i52.SearchUsecase>()));
  gh.lazySingleton<_i64.SendCommentCubit>(() => _i64.SendCommentCubit(
        get<_i23.TokenProvider>(instanceName: 'CommentsTokenImpl'),
        get<_i26.UserCubit>(),
        get<_i47.CommentSectionUsecase>(),
        get<_i8.DeviceInfoProvider>(),
        get<_i59.CommentSectionCubit>(),
      ));
  gh.lazySingleton<_i65.AppVersionsCubit>(() => _i65.AppVersionsCubit(
        get<_i55.AppVersionsUseCase>(),
        get<_i18.PackageInfo>(),
      ));
  gh.lazySingleton<_i66.BannersCubit>(() => _i66.BannersCubit(
        get<_i58.BannersUseCase>(),
        get<_i7.CachedBannersCubit>(),
      ));
  gh.lazySingleton<_i67.EventsCubit>(
      () => _i67.EventsCubit(get<_i62.EventsUseCase>()));
  return get;
}
