// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/api/interceptors/log_interceptor.dart' as _i28;
import 'core/api/main_api.dart' as _i29;
import 'core/cubits/cached/banners_cubit/banners_cubit.dart' as _i7;
import 'core/cubits/cached/event_list_cubit/event_list_cubit.dart' as _i10;
import 'core/cubits/cached/urls_cubit/urls_cubit.dart' as _i22;
import 'core/cubits/cached/user_cubit/user_cubit.dart' as _i23;
import 'features/comment_section/data/repositories/comment_section_impl.dart'
    as _i40;
import 'features/comment_section/data/sources/comment_section_source.dart'
    as _i26;
import 'features/comment_section/data/sources/comment_section_websocket.dart'
    as _i27;
import 'features/comment_section/domain/repositories/comment_section_repository.dart'
    as _i39;
import 'features/comment_section/domain/usecases/comment_section_usecase.dart'
    as _i41;
import 'features/comment_section/presentation/cubits/comment_section_cubit.dart'
    as _i55;
import 'features/comment_section/presentation/cubits/send_comment/send_comment_cubit.dart'
    as _i63;
import 'features/event_details/data/repositories/event_details_impl.dart'
    as _i57;
import 'features/event_details/data/sources/event_details_network.dart' as _i43;
import 'features/event_details/data/sources/event_details_source.dart' as _i42;
import 'features/event_details/domain/repositories/event_details_repository.dart'
    as _i56;
import 'features/event_details/domain/usecases/event_details_usecase.dart'
    as _i58;
import 'features/event_details/presentation/cubits/event_details_cubit.dart'
    as _i66;
import 'features/home/data/repositories/app_versions_impl.dart' as _i50;
import 'features/home/data/repositories/banners_impl.dart' as _i53;
import 'features/home/data/repositories/events_impl.dart' as _i60;
import 'features/home/data/sources/app_versions_network.dart' as _i36;
import 'features/home/data/sources/app_versions_source.dart' as _i35;
import 'features/home/data/sources/banners_network.dart' as _i38;
import 'features/home/data/sources/banners_source.dart' as _i37;
import 'features/home/data/sources/events_network.dart' as _i45;
import 'features/home/data/sources/events_source.dart' as _i44;
import 'features/home/domain/repositories/app_versions_repository.dart' as _i49;
import 'features/home/domain/repositories/banners_repository.dart' as _i52;
import 'features/home/domain/repositories/events_repository.dart' as _i59;
import 'features/home/domain/usecases/app_versions_usecase.dart' as _i51;
import 'features/home/domain/usecases/banners_usecase.dart' as _i54;
import 'features/home/domain/usecases/events_usecase.dart' as _i61;
import 'features/home/presentation/cubits/app_versions/app_versions_cubit.dart'
    as _i64;
import 'features/home/presentation/cubits/banners_cubit.dart' as _i65;
import 'features/home/presentation/cubits/events/events_cubit.dart' as _i67;
import 'features/search/data/repositories/search_impl.dart' as _i47;
import 'features/search/data/sources/search_network.dart' as _i31;
import 'features/search/data/sources/search_source.dart' as _i30;
import 'features/search/domain/repositories/search_repository.dart' as _i46;
import 'features/search/domain/usecases/search_usecase.dart' as _i48;
import 'features/search/presentation/cubits/search_cubit.dart' as _i62;
import 'features/settings/data/repositories/settings_impl.dart' as _i33;
import 'features/settings/data/sources/settings_network.dart' as _i19;
import 'features/settings/data/sources/settings_source.dart' as _i18;
import 'features/settings/domain/repositories/settings_repository.dart' as _i32;
import 'features/settings/domain/usecases/settings_usecase.dart' as _i34;
import 'features/settings/presentation/cubits/settings_cubit.dart' as _i17;
import 'providers/app_update/app_update.dart' as _i4;
import 'providers/app_update/ota_update.dart' as _i5;
import 'providers/cache_manager/cache_manager.dart' as _i6;
import 'providers/device_info/device_info_plus.dart' as _i9;
import 'providers/device_info/device_info_provider.dart' as _i8;
import 'providers/jwt/comments_token.dart' as _i21;
import 'providers/jwt/token_provider.dart' as _i20;
import 'providers/local_notifications/local_notifications.dart' as _i11;
import 'providers/local_notifications/local_notifications_impl.dart' as _i12;
import 'providers/logger/logger_provider.dart' as _i13;
import 'providers/logger/my_logger.dart' as _i14;
import 'providers/package_info/package_info.dart' as _i15;
import 'providers/package_info/package_info_plus.dart' as _i16;
import 'providers/websocket/socket_io.dart' as _i25;
import 'providers/websocket/websocket_provider.dart' as _i24;
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
  gh.factoryParam<_i10.EventListCubit, String, dynamic>((
    key,
    _,
  ) =>
      _i10.EventListCubit(key));
  gh.lazySingleton<_i11.LocalNotifications>(
      () => _i12.LocalNotificationsImpl());
  gh.singleton<_i13.LoggerProvider>(_i14.MyLogger());
  gh.lazySingleton<_i15.PackageInfo>(() => _i16.PackageInfoPlusImpl());
  gh.factory<_i17.SettingsCubit>(() => _i17.SettingsCubit());
  gh.lazySingleton<_i18.SettingsSource>(() => _i19.SettingsNetworkSource());
  gh.lazySingleton<_i20.TokenProvider>(
    () => _i21.CommentsToken(),
    instanceName: 'CommentsTokenImpl',
  );
  gh.lazySingleton<_i22.UrlsCubit>(() => _i22.UrlsCubit());
  gh.lazySingleton<_i23.UserCubit>(() => _i23.UserCubit());
  gh.factory<_i24.WebSocketProvider>(
    () => _i25.SocketIo(get<_i13.LoggerProvider>()),
    instanceName: 'SocketIoImpl',
  );
  gh.lazySingleton<_i26.CommentSectionSource>(
      () => _i27.CommentSectionWebsocketSource(
            get<_i24.WebSocketProvider>(instanceName: 'SocketIoImpl'),
            get<_i22.UrlsCubit>(),
          ));
  gh.lazySingleton<_i28.CustomLogInterceptor>(
      () => _i28.CustomLogInterceptor(get<_i13.LoggerProvider>()));
  gh.factory<_i29.MainApi>(() => _i29.MainApi(
        get<_i22.UrlsCubit>(),
        get<_i28.CustomLogInterceptor>(),
      ));
  gh.lazySingleton<_i30.SearchSource>(
      () => _i31.SearchNetworkSource(get<_i29.MainApi>()));
  gh.lazySingleton<_i32.SettingsRepository>(
      () => _i33.SettingsRepositoryImpl(get<_i18.SettingsSource>()));
  gh.lazySingleton<_i34.SettingsUsecase>(
      () => _i34.SettingsUsecase(get<_i32.SettingsRepository>()));
  gh.lazySingleton<_i35.AppVersionsSource>(
      () => _i36.AppVersionsNetwork(get<_i29.MainApi>()));
  gh.lazySingleton<_i37.BannersSource>(
      () => _i38.BannersNetworkSource(get<_i29.MainApi>()));
  gh.lazySingleton<_i39.CommentSectionRepository>(() =>
      _i40.CommentSectionRepositoryImpl(get<_i26.CommentSectionSource>()));
  gh.lazySingleton<_i41.CommentSectionUsecase>(
      () => _i41.CommentSectionUsecase(get<_i39.CommentSectionRepository>()));
  gh.lazySingleton<_i42.EventDetailsSource>(
      () => _i43.EventDetailsNetworkSource(get<_i29.MainApi>()));
  gh.lazySingleton<_i44.EventsSource>(
      () => _i45.EventsNetwork(get<_i29.MainApi>()));
  gh.lazySingleton<_i46.SearchRepository>(
      () => _i47.SearchRepositoryImpl(get<_i30.SearchSource>()));
  gh.lazySingleton<_i48.SearchUsecase>(
      () => _i48.SearchUsecase(get<_i46.SearchRepository>()));
  gh.lazySingleton<_i49.AppVersionsRepository>(
      () => _i50.AppVersionsRepositoryImpl(get<_i35.AppVersionsSource>()));
  gh.lazySingleton<_i51.AppVersionsUseCase>(
      () => _i51.AppVersionsUseCase(get<_i49.AppVersionsRepository>()));
  gh.lazySingleton<_i52.BannersRepository>(
      () => _i53.BannersRepositoryImpl(get<_i37.BannersSource>()));
  gh.lazySingleton<_i54.BannersUseCase>(
      () => _i54.BannersUseCase(get<_i52.BannersRepository>()));
  gh.lazySingleton<_i55.CommentSectionCubit>(() => _i55.CommentSectionCubit(
        get<_i41.CommentSectionUsecase>(),
        get<_i20.TokenProvider>(instanceName: 'CommentsTokenImpl'),
      ));
  gh.lazySingleton<_i56.EventDetailsRepository>(
      () => _i57.EventDetailsRepositoryImpl(get<_i42.EventDetailsSource>()));
  gh.lazySingleton<_i58.EventDetailsUsecase>(
      () => _i58.EventDetailsUsecase(get<_i56.EventDetailsRepository>()));
  gh.lazySingleton<_i59.EventsRepository>(
      () => _i60.EventsRepositoryImpl(get<_i44.EventsSource>()));
  gh.lazySingleton<_i61.EventsUseCase>(
      () => _i61.EventsUseCase(get<_i59.EventsRepository>()));
  gh.factory<_i62.SearchCubit>(
      () => _i62.SearchCubit(get<_i48.SearchUsecase>()));
  gh.lazySingleton<_i63.SendCommentCubit>(() => _i63.SendCommentCubit(
        get<_i20.TokenProvider>(instanceName: 'CommentsTokenImpl'),
        get<_i23.UserCubit>(),
        get<_i41.CommentSectionUsecase>(),
        get<_i8.DeviceInfoProvider>(),
        get<_i55.CommentSectionCubit>(),
      ));
  gh.lazySingleton<_i64.AppVersionsCubit>(() => _i64.AppVersionsCubit(
        get<_i51.AppVersionsUseCase>(),
        get<_i15.PackageInfo>(),
      ));
  gh.lazySingleton<_i65.BannersCubit>(() => _i65.BannersCubit(
        get<_i54.BannersUseCase>(),
        get<_i7.CachedBannersCubit>(),
      ));
  gh.factory<_i66.EventDetailsCubit>(
      () => _i66.EventDetailsCubit(get<_i58.EventDetailsUsecase>()));
  gh.lazySingleton<_i67.EventsCubit>(
      () => _i67.EventsCubit(get<_i61.EventsUseCase>()));
  return get;
}
