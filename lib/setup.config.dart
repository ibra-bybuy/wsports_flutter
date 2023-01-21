// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/api/interceptors/log_interceptor.dart' as _i31;
import 'core/api/main_api.dart' as _i33;
import 'core/components/loader/alert_loader/alert_loader.dart' as _i3;
import 'core/cubits/cached/banners_cubit/banners_cubit.dart' as _i8;
import 'core/cubits/cached/event_list_cubit/event_list_cubit.dart' as _i11;
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
    as _i64;
import 'features/comment_section/presentation/cubits/send_comment/send_comment_cubit.dart'
    as _i72;
import 'features/event_details/data/repositories/event_details_impl.dart'
    as _i66;
import 'features/event_details/data/sources/event_details_network.dart' as _i49;
import 'features/event_details/data/sources/event_details_source.dart' as _i48;
import 'features/event_details/domain/repositories/event_details_repository.dart'
    as _i65;
import 'features/event_details/domain/usecases/event_details_usecase.dart'
    as _i67;
import 'features/event_details/presentation/cubits/event_details_cubit.dart'
    as _i76;
import 'features/home/data/repositories/app_versions_impl.dart' as _i59;
import 'features/home/data/repositories/banners_impl.dart' as _i62;
import 'features/home/data/repositories/events_impl.dart' as _i69;
import 'features/home/data/sources/app_versions_network.dart' as _i42;
import 'features/home/data/sources/app_versions_source.dart' as _i41;
import 'features/home/data/sources/banners_network.dart' as _i44;
import 'features/home/data/sources/banners_source.dart' as _i43;
import 'features/home/data/sources/events_network.dart' as _i51;
import 'features/home/data/sources/events_source.dart' as _i50;
import 'features/home/domain/repositories/app_versions_repository.dart' as _i58;
import 'features/home/domain/repositories/banners_repository.dart' as _i61;
import 'features/home/domain/repositories/events_repository.dart' as _i68;
import 'features/home/domain/usecases/app_versions_usecase.dart' as _i60;
import 'features/home/domain/usecases/banners_usecase.dart' as _i63;
import 'features/home/domain/usecases/events_usecase.dart' as _i70;
import 'features/home/presentation/cubits/app_versions/app_versions_cubit.dart'
    as _i74;
import 'features/home/presentation/cubits/banners_cubit.dart' as _i75;
import 'features/home/presentation/cubits/events/events_cubit.dart' as _i77;
import 'features/search/data/repositories/search_impl.dart' as _i53;
import 'features/search/data/sources/search_network.dart' as _i35;
import 'features/search/data/sources/search_source.dart' as _i34;
import 'features/search/domain/repositories/search_repository.dart' as _i52;
import 'features/search/domain/usecases/search_usecase.dart' as _i54;
import 'features/search/presentation/cubits/search_cubit.dart' as _i71;
import 'features/settings/data/repositories/settings_impl.dart' as _i37;
import 'features/settings/data/sources/settings_network.dart' as _i20;
import 'features/settings/data/sources/settings_source.dart' as _i19;
import 'features/settings/domain/repositories/settings_repository.dart' as _i36;
import 'features/settings/domain/usecases/settings_usecase.dart' as _i38;
import 'features/settings/presentation/cubits/settings_cubit.dart' as _i18;
import 'features/tournament_details/data/repositories/tournament_details_impl.dart'
    as _i56;
import 'features/tournament_details/data/sources/tournament_details_network.dart'
    as _i40;
import 'features/tournament_details/data/sources/tournament_details_source.dart'
    as _i39;
import 'features/tournament_details/domain/repositories/tournament_details_repository.dart'
    as _i55;
import 'features/tournament_details/domain/usecases/tournament_details_usecase.dart'
    as _i57;
import 'features/tournament_details/presentation/cubits/tournament_details_cubit.dart'
    as _i73;
import 'providers/app_update/app_update.dart' as _i5;
import 'providers/app_update/ota_update.dart' as _i6;
import 'providers/cache_manager/cache_manager.dart' as _i7;
import 'providers/device_info/device_info_plus.dart' as _i10;
import 'providers/device_info/device_info_provider.dart' as _i9;
import 'providers/event_notifications/event_notifications_provider.dart'
    as _i32;
import 'providers/jwt/comments_token.dart' as _i22;
import 'providers/jwt/token_provider.dart' as _i21;
import 'providers/local_notifications/local_notifications.dart' as _i12;
import 'providers/local_notifications/local_notifications_impl.dart' as _i13;
import 'providers/logger/logger_provider.dart' as _i14;
import 'providers/logger/my_logger.dart' as _i15;
import 'providers/package_info/package_info.dart' as _i16;
import 'providers/package_info/package_info_plus.dart' as _i17;
import 'providers/translit/translit_impl.dart' as _i24;
import 'providers/translit/translit_provider.dart' as _i23;
import 'providers/websocket/socket_io.dart' as _i28;
import 'providers/websocket/websocket_provider.dart' as _i27;
import 'router/app_router.dart' as _i4; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i3.AlerLoader>(() => _i3.AlerLoader());
  gh.singleton<_i4.AppRouter>(_i4.AppRouter());
  gh.factory<_i5.AppUpdate>(() => _i6.OtaUpdateImpl());
  gh.lazySingleton<_i7.CacheManager>(() => _i7.CacheManager());
  gh.lazySingleton<_i8.CachedBannersCubit>(() => _i8.CachedBannersCubit());
  gh.lazySingleton<_i9.DeviceInfoProvider>(() => _i10.DeviceInfoPlus());
  gh.factoryParam<_i11.EventListCubit, String, dynamic>((
    key,
    _,
  ) =>
      _i11.EventListCubit(key));
  gh.lazySingleton<_i12.LocalNotifications>(
      () => _i13.LocalNotificationsImpl());
  gh.singleton<_i14.LoggerProvider>(_i15.MyLogger());
  gh.lazySingleton<_i16.PackageInfo>(() => _i17.PackageInfoPlusImpl());
  gh.factory<_i18.SettingsCubit>(() => _i18.SettingsCubit());
  gh.lazySingleton<_i19.SettingsSource>(() => _i20.SettingsNetworkSource());
  gh.lazySingleton<_i21.TokenProvider>(
    () => _i22.CommentsToken(),
    instanceName: 'CommentsTokenImpl',
  );
  gh.lazySingleton<_i23.TranslitProvider>(() => _i24.TranslitImpl());
  gh.lazySingleton<_i25.UrlsCubit>(() => _i25.UrlsCubit());
  gh.lazySingleton<_i26.UserCubit>(() => _i26.UserCubit());
  gh.factory<_i27.WebSocketProvider>(
    () => _i28.SocketIo(get<_i14.LoggerProvider>()),
    instanceName: 'SocketIoImpl',
  );
  gh.lazySingleton<_i29.CommentSectionSource>(
      () => _i30.CommentSectionWebsocketSource(
            get<_i27.WebSocketProvider>(instanceName: 'SocketIoImpl'),
            get<_i25.UrlsCubit>(),
          ));
  gh.lazySingleton<_i31.CustomLogInterceptor>(
      () => _i31.CustomLogInterceptor(get<_i14.LoggerProvider>()));
  gh.lazySingleton<_i32.EventNotificationsProvider>(
      () => _i32.EventNotificationsProvider(
            get<_i12.LocalNotifications>(),
            get<_i4.AppRouter>(),
          ));
  gh.factory<_i33.MainApi>(() => _i33.MainApi(
        get<_i25.UrlsCubit>(),
        get<_i31.CustomLogInterceptor>(),
      ));
  gh.lazySingleton<_i34.SearchSource>(
      () => _i35.SearchNetworkSource(get<_i33.MainApi>()));
  gh.lazySingleton<_i36.SettingsRepository>(
      () => _i37.SettingsRepositoryImpl(get<_i19.SettingsSource>()));
  gh.lazySingleton<_i38.SettingsUsecase>(
      () => _i38.SettingsUsecase(get<_i36.SettingsRepository>()));
  gh.lazySingleton<_i39.TournamentDetailsSource>(
      () => _i40.TournamentDetailsNetworkSource(get<_i33.MainApi>()));
  gh.lazySingleton<_i41.AppVersionsSource>(
      () => _i42.AppVersionsNetwork(get<_i33.MainApi>()));
  gh.lazySingleton<_i43.BannersSource>(
      () => _i44.BannersNetworkSource(get<_i33.MainApi>()));
  gh.lazySingleton<_i45.CommentSectionRepository>(() =>
      _i46.CommentSectionRepositoryImpl(get<_i29.CommentSectionSource>()));
  gh.lazySingleton<_i47.CommentSectionUsecase>(
      () => _i47.CommentSectionUsecase(get<_i45.CommentSectionRepository>()));
  gh.lazySingleton<_i48.EventDetailsSource>(
      () => _i49.EventDetailsNetworkSource(get<_i33.MainApi>()));
  gh.lazySingleton<_i50.EventsSource>(
      () => _i51.EventsNetwork(get<_i33.MainApi>()));
  gh.lazySingleton<_i52.SearchRepository>(
      () => _i53.SearchRepositoryImpl(get<_i34.SearchSource>()));
  gh.lazySingleton<_i54.SearchUsecase>(
      () => _i54.SearchUsecase(get<_i52.SearchRepository>()));
  gh.lazySingleton<_i55.TournamentDetailsRepository>(() =>
      _i56.TournamentDetailsRepositoryImpl(
          get<_i39.TournamentDetailsSource>()));
  gh.lazySingleton<_i57.TournamentDetailsUsecase>(() =>
      _i57.TournamentDetailsUsecase(get<_i55.TournamentDetailsRepository>()));
  gh.lazySingleton<_i58.AppVersionsRepository>(
      () => _i59.AppVersionsRepositoryImpl(get<_i41.AppVersionsSource>()));
  gh.lazySingleton<_i60.AppVersionsUseCase>(
      () => _i60.AppVersionsUseCase(get<_i58.AppVersionsRepository>()));
  gh.lazySingleton<_i61.BannersRepository>(
      () => _i62.BannersRepositoryImpl(get<_i43.BannersSource>()));
  gh.lazySingleton<_i63.BannersUseCase>(
      () => _i63.BannersUseCase(get<_i61.BannersRepository>()));
  gh.lazySingleton<_i64.CommentSectionCubit>(() => _i64.CommentSectionCubit(
        get<_i47.CommentSectionUsecase>(),
        get<_i21.TokenProvider>(instanceName: 'CommentsTokenImpl'),
      ));
  gh.lazySingleton<_i65.EventDetailsRepository>(
      () => _i66.EventDetailsRepositoryImpl(get<_i48.EventDetailsSource>()));
  gh.lazySingleton<_i67.EventDetailsUsecase>(
      () => _i67.EventDetailsUsecase(get<_i65.EventDetailsRepository>()));
  gh.lazySingleton<_i68.EventsRepository>(
      () => _i69.EventsRepositoryImpl(get<_i50.EventsSource>()));
  gh.lazySingleton<_i70.EventsUseCase>(
      () => _i70.EventsUseCase(get<_i68.EventsRepository>()));
  gh.factory<_i71.SearchCubit>(
      () => _i71.SearchCubit(get<_i54.SearchUsecase>()));
  gh.lazySingleton<_i72.SendCommentCubit>(() => _i72.SendCommentCubit(
        get<_i21.TokenProvider>(instanceName: 'CommentsTokenImpl'),
        get<_i26.UserCubit>(),
        get<_i47.CommentSectionUsecase>(),
        get<_i9.DeviceInfoProvider>(),
        get<_i64.CommentSectionCubit>(),
      ));
  gh.factory<_i73.TournamentDetailsCubit>(
      () => _i73.TournamentDetailsCubit(get<_i57.TournamentDetailsUsecase>()));
  gh.lazySingleton<_i74.AppVersionsCubit>(() => _i74.AppVersionsCubit(
        get<_i60.AppVersionsUseCase>(),
        get<_i16.PackageInfo>(),
      ));
  gh.lazySingleton<_i75.BannersCubit>(() => _i75.BannersCubit(
        get<_i63.BannersUseCase>(),
        get<_i8.CachedBannersCubit>(),
      ));
  gh.factory<_i76.EventDetailsCubit>(
      () => _i76.EventDetailsCubit(get<_i67.EventDetailsUsecase>()));
  gh.lazySingleton<_i77.EventsCubit>(
      () => _i77.EventsCubit(get<_i70.EventsUseCase>()));
  return get;
}
