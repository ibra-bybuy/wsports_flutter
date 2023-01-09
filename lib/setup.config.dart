// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/api/interceptors/log_interceptor.dart' as _i28;
import 'core/api/main_api.dart' as _i30;
import 'core/cubits/cached/banners_cubit/banners_cubit.dart' as _i7;
import 'core/cubits/cached/event_list_cubit/event_list_cubit.dart' as _i10;
import 'core/cubits/cached/urls_cubit/urls_cubit.dart' as _i22;
import 'core/cubits/cached/user_cubit/user_cubit.dart' as _i23;
import 'features/comment_section/data/repositories/comment_section_impl.dart'
    as _i43;
import 'features/comment_section/data/sources/comment_section_source.dart'
    as _i26;
import 'features/comment_section/data/sources/comment_section_websocket.dart'
    as _i27;
import 'features/comment_section/domain/repositories/comment_section_repository.dart'
    as _i42;
import 'features/comment_section/domain/usecases/comment_section_usecase.dart'
    as _i44;
import 'features/comment_section/presentation/cubits/comment_section_cubit.dart'
    as _i61;
import 'features/comment_section/presentation/cubits/send_comment/send_comment_cubit.dart'
    as _i69;
import 'features/event_details/data/repositories/event_details_impl.dart'
    as _i63;
import 'features/event_details/data/sources/event_details_network.dart' as _i46;
import 'features/event_details/data/sources/event_details_source.dart' as _i45;
import 'features/event_details/domain/repositories/event_details_repository.dart'
    as _i62;
import 'features/event_details/domain/usecases/event_details_usecase.dart'
    as _i64;
import 'features/event_details/presentation/cubits/event_details_cubit.dart'
    as _i73;
import 'features/home/data/repositories/app_versions_impl.dart' as _i56;
import 'features/home/data/repositories/banners_impl.dart' as _i59;
import 'features/home/data/repositories/events_impl.dart' as _i66;
import 'features/home/data/sources/app_versions_network.dart' as _i39;
import 'features/home/data/sources/app_versions_source.dart' as _i38;
import 'features/home/data/sources/banners_network.dart' as _i41;
import 'features/home/data/sources/banners_source.dart' as _i40;
import 'features/home/data/sources/events_network.dart' as _i48;
import 'features/home/data/sources/events_source.dart' as _i47;
import 'features/home/domain/repositories/app_versions_repository.dart' as _i55;
import 'features/home/domain/repositories/banners_repository.dart' as _i58;
import 'features/home/domain/repositories/events_repository.dart' as _i65;
import 'features/home/domain/usecases/app_versions_usecase.dart' as _i57;
import 'features/home/domain/usecases/banners_usecase.dart' as _i60;
import 'features/home/domain/usecases/events_usecase.dart' as _i67;
import 'features/home/presentation/cubits/app_versions/app_versions_cubit.dart'
    as _i71;
import 'features/home/presentation/cubits/banners_cubit.dart' as _i72;
import 'features/home/presentation/cubits/events/events_cubit.dart' as _i74;
import 'features/search/data/repositories/search_impl.dart' as _i50;
import 'features/search/data/sources/search_network.dart' as _i32;
import 'features/search/data/sources/search_source.dart' as _i31;
import 'features/search/domain/repositories/search_repository.dart' as _i49;
import 'features/search/domain/usecases/search_usecase.dart' as _i51;
import 'features/search/presentation/cubits/search_cubit.dart' as _i68;
import 'features/settings/data/repositories/settings_impl.dart' as _i34;
import 'features/settings/data/sources/settings_network.dart' as _i19;
import 'features/settings/data/sources/settings_source.dart' as _i18;
import 'features/settings/domain/repositories/settings_repository.dart' as _i33;
import 'features/settings/domain/usecases/settings_usecase.dart' as _i35;
import 'features/settings/presentation/cubits/settings_cubit.dart' as _i17;
import 'features/tournament_details/data/repositories/tournament_details_impl.dart'
    as _i53;
import 'features/tournament_details/data/sources/tournament_details_network.dart'
    as _i37;
import 'features/tournament_details/data/sources/tournament_details_source.dart'
    as _i36;
import 'features/tournament_details/domain/repositories/tournament_details_repository.dart'
    as _i52;
import 'features/tournament_details/domain/usecases/tournament_details_usecase.dart'
    as _i54;
import 'features/tournament_details/presentation/cubits/tournament_details_cubit.dart'
    as _i70;
import 'providers/app_update/app_update.dart' as _i4;
import 'providers/app_update/ota_update.dart' as _i5;
import 'providers/cache_manager/cache_manager.dart' as _i6;
import 'providers/device_info/device_info_plus.dart' as _i9;
import 'providers/device_info/device_info_provider.dart' as _i8;
import 'providers/event_notifications/event_notifications_provider.dart'
    as _i29;
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
  gh.lazySingleton<_i29.EventNotificationsProvider>(
      () => _i29.EventNotificationsProvider(
            get<_i11.LocalNotifications>(),
            get<_i3.AppRouter>(),
          ));
  gh.factory<_i30.MainApi>(() => _i30.MainApi(
        get<_i22.UrlsCubit>(),
        get<_i28.CustomLogInterceptor>(),
      ));
  gh.lazySingleton<_i31.SearchSource>(
      () => _i32.SearchNetworkSource(get<_i30.MainApi>()));
  gh.lazySingleton<_i33.SettingsRepository>(
      () => _i34.SettingsRepositoryImpl(get<_i18.SettingsSource>()));
  gh.lazySingleton<_i35.SettingsUsecase>(
      () => _i35.SettingsUsecase(get<_i33.SettingsRepository>()));
  gh.lazySingleton<_i36.TournamentDetailsSource>(
      () => _i37.TournamentDetailsNetworkSource(get<_i30.MainApi>()));
  gh.lazySingleton<_i38.AppVersionsSource>(
      () => _i39.AppVersionsNetwork(get<_i30.MainApi>()));
  gh.lazySingleton<_i40.BannersSource>(
      () => _i41.BannersNetworkSource(get<_i30.MainApi>()));
  gh.lazySingleton<_i42.CommentSectionRepository>(() =>
      _i43.CommentSectionRepositoryImpl(get<_i26.CommentSectionSource>()));
  gh.lazySingleton<_i44.CommentSectionUsecase>(
      () => _i44.CommentSectionUsecase(get<_i42.CommentSectionRepository>()));
  gh.lazySingleton<_i45.EventDetailsSource>(
      () => _i46.EventDetailsNetworkSource(get<_i30.MainApi>()));
  gh.lazySingleton<_i47.EventsSource>(
      () => _i48.EventsNetwork(get<_i30.MainApi>()));
  gh.lazySingleton<_i49.SearchRepository>(
      () => _i50.SearchRepositoryImpl(get<_i31.SearchSource>()));
  gh.lazySingleton<_i51.SearchUsecase>(
      () => _i51.SearchUsecase(get<_i49.SearchRepository>()));
  gh.lazySingleton<_i52.TournamentDetailsRepository>(() =>
      _i53.TournamentDetailsRepositoryImpl(
          get<_i36.TournamentDetailsSource>()));
  gh.lazySingleton<_i54.TournamentDetailsUsecase>(() =>
      _i54.TournamentDetailsUsecase(get<_i52.TournamentDetailsRepository>()));
  gh.lazySingleton<_i55.AppVersionsRepository>(
      () => _i56.AppVersionsRepositoryImpl(get<_i38.AppVersionsSource>()));
  gh.lazySingleton<_i57.AppVersionsUseCase>(
      () => _i57.AppVersionsUseCase(get<_i55.AppVersionsRepository>()));
  gh.lazySingleton<_i58.BannersRepository>(
      () => _i59.BannersRepositoryImpl(get<_i40.BannersSource>()));
  gh.lazySingleton<_i60.BannersUseCase>(
      () => _i60.BannersUseCase(get<_i58.BannersRepository>()));
  gh.lazySingleton<_i61.CommentSectionCubit>(() => _i61.CommentSectionCubit(
        get<_i44.CommentSectionUsecase>(),
        get<_i20.TokenProvider>(instanceName: 'CommentsTokenImpl'),
      ));
  gh.lazySingleton<_i62.EventDetailsRepository>(
      () => _i63.EventDetailsRepositoryImpl(get<_i45.EventDetailsSource>()));
  gh.lazySingleton<_i64.EventDetailsUsecase>(
      () => _i64.EventDetailsUsecase(get<_i62.EventDetailsRepository>()));
  gh.lazySingleton<_i65.EventsRepository>(
      () => _i66.EventsRepositoryImpl(get<_i47.EventsSource>()));
  gh.lazySingleton<_i67.EventsUseCase>(
      () => _i67.EventsUseCase(get<_i65.EventsRepository>()));
  gh.factory<_i68.SearchCubit>(
      () => _i68.SearchCubit(get<_i51.SearchUsecase>()));
  gh.lazySingleton<_i69.SendCommentCubit>(() => _i69.SendCommentCubit(
        get<_i20.TokenProvider>(instanceName: 'CommentsTokenImpl'),
        get<_i23.UserCubit>(),
        get<_i44.CommentSectionUsecase>(),
        get<_i8.DeviceInfoProvider>(),
        get<_i61.CommentSectionCubit>(),
      ));
  gh.factory<_i70.TournamentDetailsCubit>(
      () => _i70.TournamentDetailsCubit(get<_i54.TournamentDetailsUsecase>()));
  gh.lazySingleton<_i71.AppVersionsCubit>(() => _i71.AppVersionsCubit(
        get<_i57.AppVersionsUseCase>(),
        get<_i15.PackageInfo>(),
      ));
  gh.lazySingleton<_i72.BannersCubit>(() => _i72.BannersCubit(
        get<_i60.BannersUseCase>(),
        get<_i7.CachedBannersCubit>(),
      ));
  gh.factory<_i73.EventDetailsCubit>(
      () => _i73.EventDetailsCubit(get<_i64.EventDetailsUsecase>()));
  gh.lazySingleton<_i74.EventsCubit>(
      () => _i74.EventsCubit(get<_i67.EventsUseCase>()));
  return get;
}
