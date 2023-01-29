// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/api/interceptors/log_interceptor.dart' as _i39;
import 'core/api/main_api.dart' as _i41;
import 'core/components/loader/alert_loader/alert_loader.dart' as _i3;
import 'core/cubits/cached/banners_cubit/banners_cubit.dart' as _i9;
import 'core/cubits/cached/event_list_cubit/event_list_cubit.dart' as _i14;
import 'core/cubits/cached/lang/lang_cubit.dart' as _i10;
import 'core/cubits/cached/tournaments_cubit/tournaments_cubit.dart' as _i11;
import 'core/cubits/cached/urls_cubit/urls_cubit.dart' as _i33;
import 'core/cubits/cached/user_cubit/user_cubit.dart' as _i34;
import 'features/comment_section/data/repositories/comment_section_impl.dart'
    as _i60;
import 'features/comment_section/data/sources/comment_section_source.dart'
    as _i37;
import 'features/comment_section/data/sources/comment_section_websocket.dart'
    as _i38;
import 'features/comment_section/domain/repositories/comment_section_repository.dart'
    as _i59;
import 'features/comment_section/domain/usecases/comment_section_usecase.dart'
    as _i61;
import 'features/comment_section/presentation/cubits/comment_section_cubit.dart'
    as _i79;
import 'features/comment_section/presentation/cubits/send_comment/send_comment_cubit.dart'
    as _i87;
import 'features/event_details/data/repositories/event_details_impl.dart'
    as _i81;
import 'features/event_details/data/sources/event_details_network.dart' as _i63;
import 'features/event_details/data/sources/event_details_source.dart' as _i62;
import 'features/event_details/domain/repositories/event_details_repository.dart'
    as _i80;
import 'features/event_details/domain/usecases/event_details_usecase.dart'
    as _i82;
import 'features/event_details/presentation/cubits/event_details_cubit.dart'
    as _i91;
import 'features/home/data/repositories/app_versions_impl.dart' as _i74;
import 'features/home/data/repositories/banners_impl.dart' as _i77;
import 'features/home/data/repositories/events_impl.dart' as _i84;
import 'features/home/data/sources/app_versions_network.dart' as _i56;
import 'features/home/data/sources/app_versions_source.dart' as _i55;
import 'features/home/data/sources/banners_network.dart' as _i58;
import 'features/home/data/sources/banners_source.dart' as _i57;
import 'features/home/data/sources/events_network.dart' as _i65;
import 'features/home/data/sources/events_source.dart' as _i64;
import 'features/home/domain/repositories/app_versions_repository.dart' as _i73;
import 'features/home/domain/repositories/banners_repository.dart' as _i76;
import 'features/home/domain/repositories/events_repository.dart' as _i83;
import 'features/home/domain/usecases/app_versions_usecase.dart' as _i75;
import 'features/home/domain/usecases/banners_usecase.dart' as _i78;
import 'features/home/domain/usecases/events_usecase.dart' as _i85;
import 'features/home/presentation/cubits/app_versions/app_versions_cubit.dart'
    as _i89;
import 'features/home/presentation/cubits/banners_cubit.dart' as _i90;
import 'features/home/presentation/cubits/events/events_cubit.dart' as _i92;
import 'features/main/data/repositories/main_impl.dart' as _i43;
import 'features/main/data/sources/main_network.dart' as _i21;
import 'features/main/data/sources/main_source.dart' as _i20;
import 'features/main/domain/repositories/main_repository.dart' as _i42;
import 'features/main/domain/usecases/main_usecase.dart' as _i44;
import 'features/main/presentation/cubits/bottom_nav_bar_cubit.dart' as _i7;
import 'features/main/presentation/cubits/main_cubit.dart' as _i19;
import 'features/profile/data/repositories/profile_impl.dart' as _i46;
import 'features/profile/data/sources/profile_network.dart' as _i26;
import 'features/profile/data/sources/profile_source.dart' as _i25;
import 'features/profile/domain/repositories/profile_repository.dart' as _i45;
import 'features/profile/domain/usecases/profile_usecase.dart' as _i47;
import 'features/profile/presentation/cubits/profile_cubit.dart' as _i24;
import 'features/search/data/repositories/search_impl.dart' as _i67;
import 'features/search/data/sources/search_network.dart' as _i49;
import 'features/search/data/sources/search_source.dart' as _i48;
import 'features/search/domain/repositories/search_repository.dart' as _i66;
import 'features/search/domain/usecases/search_usecase.dart' as _i68;
import 'features/search/presentation/cubits/search_cubit.dart' as _i86;
import 'features/tournament_details/data/repositories/tournament_details_impl.dart'
    as _i70;
import 'features/tournament_details/data/sources/tournament_details_network.dart'
    as _i51;
import 'features/tournament_details/data/sources/tournament_details_source.dart'
    as _i50;
import 'features/tournament_details/domain/repositories/tournament_details_repository.dart'
    as _i69;
import 'features/tournament_details/domain/usecases/tournament_details_usecase.dart'
    as _i71;
import 'features/tournament_details/presentation/cubits/tournament_details_cubit.dart'
    as _i88;
import 'features/tournaments/data/repositories/tournaments_impl.dart' as _i53;
import 'features/tournaments/data/sources/tournaments_network.dart' as _i30;
import 'features/tournaments/data/sources/tournaments_source.dart' as _i29;
import 'features/tournaments/domain/repositories/tournaments_repository.dart'
    as _i52;
import 'features/tournaments/domain/usecases/tournaments_usecase.dart' as _i54;
import 'features/tournaments/presentation/cubits/tournaments_cubit.dart'
    as _i72;
import 'providers/app_update/app_update.dart' as _i5;
import 'providers/app_update/ota_update.dart' as _i6;
import 'providers/cache_manager/cache_manager.dart' as _i8;
import 'providers/device_info/device_info_plus.dart' as _i13;
import 'providers/device_info/device_info_provider.dart' as _i12;
import 'providers/event_notifications/event_notifications_provider.dart'
    as _i40;
import 'providers/jwt/comments_token.dart' as _i28;
import 'providers/jwt/token_provider.dart' as _i27;
import 'providers/local_notifications/local_notifications.dart' as _i15;
import 'providers/local_notifications/local_notifications_impl.dart' as _i16;
import 'providers/logger/logger_provider.dart' as _i17;
import 'providers/logger/my_logger.dart' as _i18;
import 'providers/package_info/package_info.dart' as _i22;
import 'providers/package_info/package_info_plus.dart' as _i23;
import 'providers/translit/translit_impl.dart' as _i32;
import 'providers/translit/translit_provider.dart' as _i31;
import 'providers/websocket/socket_io.dart' as _i36;
import 'providers/websocket/websocket_provider.dart' as _i35;
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
  gh.lazySingleton<_i7.BottomNavBarCubit>(() => _i7.BottomNavBarCubit());
  gh.lazySingleton<_i8.CacheManager>(() => _i8.CacheManager());
  gh.lazySingleton<_i9.CachedBannersCubit>(() => _i9.CachedBannersCubit());
  gh.lazySingleton<_i10.CachedLangCubit>(() => _i10.CachedLangCubit());
  gh.lazySingleton<_i11.CachedTournamentsCubit>(
      () => _i11.CachedTournamentsCubit());
  gh.lazySingleton<_i12.DeviceInfoProvider>(() => _i13.DeviceInfoPlus());
  gh.factoryParam<_i14.EventListCubit, String, dynamic>((
    key,
    _,
  ) =>
      _i14.EventListCubit(key));
  gh.lazySingleton<_i15.LocalNotifications>(
      () => _i16.LocalNotificationsImpl());
  gh.singleton<_i17.LoggerProvider>(_i18.MyLogger());
  gh.factory<_i19.MainCubit>(() => _i19.MainCubit());
  gh.lazySingleton<_i20.MainSource>(() => _i21.MainNetworkSource());
  gh.lazySingleton<_i22.PackageInfo>(() => _i23.PackageInfoPlusImpl());
  gh.factory<_i24.ProfileCubit>(() => _i24.ProfileCubit());
  gh.lazySingleton<_i25.ProfileSource>(() => _i26.ProfileNetworkSource());
  gh.lazySingleton<_i27.TokenProvider>(
    () => _i28.CommentsToken(),
    instanceName: 'CommentsTokenImpl',
  );
  gh.lazySingleton<_i29.TournamentsSource>(
      () => _i30.TournamentsNetworkSource());
  gh.lazySingleton<_i31.TranslitProvider>(() => _i32.TranslitImpl());
  gh.lazySingleton<_i33.UrlsCubit>(() => _i33.UrlsCubit());
  gh.lazySingleton<_i34.UserCubit>(() => _i34.UserCubit());
  gh.factory<_i35.WebSocketProvider>(
    () => _i36.SocketIo(get<_i17.LoggerProvider>()),
    instanceName: 'SocketIoImpl',
  );
  gh.lazySingleton<_i37.CommentSectionSource>(
      () => _i38.CommentSectionWebsocketSource(
            get<_i35.WebSocketProvider>(instanceName: 'SocketIoImpl'),
            get<_i33.UrlsCubit>(),
          ));
  gh.lazySingleton<_i39.CustomLogInterceptor>(
      () => _i39.CustomLogInterceptor(get<_i17.LoggerProvider>()));
  gh.lazySingleton<_i40.EventNotificationsProvider>(
      () => _i40.EventNotificationsProvider(
            get<_i15.LocalNotifications>(),
            get<_i4.AppRouter>(),
          ));
  gh.factory<_i41.MainApi>(() => _i41.MainApi(
        get<_i33.UrlsCubit>(),
        get<_i39.CustomLogInterceptor>(),
      ));
  gh.lazySingleton<_i42.MainRepository>(
      () => _i43.MainRepositoryImpl(get<_i20.MainSource>()));
  gh.lazySingleton<_i44.MainUsecase>(
      () => _i44.MainUsecase(get<_i42.MainRepository>()));
  gh.lazySingleton<_i45.ProfileRepository>(
      () => _i46.ProfileRepositoryImpl(get<_i25.ProfileSource>()));
  gh.lazySingleton<_i47.ProfileUsecase>(
      () => _i47.ProfileUsecase(get<_i45.ProfileRepository>()));
  gh.lazySingleton<_i48.SearchSource>(
      () => _i49.SearchNetworkSource(get<_i41.MainApi>()));
  gh.lazySingleton<_i50.TournamentDetailsSource>(
      () => _i51.TournamentDetailsNetworkSource(get<_i41.MainApi>()));
  gh.lazySingleton<_i52.TournamentsRepository>(
      () => _i53.TournamentsRepositoryImpl(get<_i29.TournamentsSource>()));
  gh.lazySingleton<_i54.TournamentsUsecase>(
      () => _i54.TournamentsUsecase(get<_i52.TournamentsRepository>()));
  gh.lazySingleton<_i55.AppVersionsSource>(
      () => _i56.AppVersionsNetwork(get<_i41.MainApi>()));
  gh.lazySingleton<_i57.BannersSource>(
      () => _i58.BannersNetworkSource(get<_i41.MainApi>()));
  gh.lazySingleton<_i59.CommentSectionRepository>(() =>
      _i60.CommentSectionRepositoryImpl(get<_i37.CommentSectionSource>()));
  gh.lazySingleton<_i61.CommentSectionUsecase>(
      () => _i61.CommentSectionUsecase(get<_i59.CommentSectionRepository>()));
  gh.lazySingleton<_i62.EventDetailsSource>(
      () => _i63.EventDetailsNetworkSource(get<_i41.MainApi>()));
  gh.lazySingleton<_i64.EventsSource>(
      () => _i65.EventsNetwork(get<_i41.MainApi>()));
  gh.lazySingleton<_i66.SearchRepository>(
      () => _i67.SearchRepositoryImpl(get<_i48.SearchSource>()));
  gh.lazySingleton<_i68.SearchUsecase>(
      () => _i68.SearchUsecase(get<_i66.SearchRepository>()));
  gh.lazySingleton<_i69.TournamentDetailsRepository>(() =>
      _i70.TournamentDetailsRepositoryImpl(
          get<_i50.TournamentDetailsSource>()));
  gh.lazySingleton<_i71.TournamentDetailsUsecase>(() =>
      _i71.TournamentDetailsUsecase(get<_i69.TournamentDetailsRepository>()));
  gh.lazySingleton<_i72.TournamentsCubit>(() => _i72.TournamentsCubit(
        get<_i11.CachedTournamentsCubit>(),
        get<_i54.TournamentsUsecase>(),
      ));
  gh.lazySingleton<_i73.AppVersionsRepository>(
      () => _i74.AppVersionsRepositoryImpl(get<_i55.AppVersionsSource>()));
  gh.lazySingleton<_i75.AppVersionsUseCase>(
      () => _i75.AppVersionsUseCase(get<_i73.AppVersionsRepository>()));
  gh.lazySingleton<_i76.BannersRepository>(
      () => _i77.BannersRepositoryImpl(get<_i57.BannersSource>()));
  gh.lazySingleton<_i78.BannersUseCase>(
      () => _i78.BannersUseCase(get<_i76.BannersRepository>()));
  gh.lazySingleton<_i79.CommentSectionCubit>(() => _i79.CommentSectionCubit(
        get<_i61.CommentSectionUsecase>(),
        get<_i27.TokenProvider>(instanceName: 'CommentsTokenImpl'),
      ));
  gh.lazySingleton<_i80.EventDetailsRepository>(
      () => _i81.EventDetailsRepositoryImpl(get<_i62.EventDetailsSource>()));
  gh.lazySingleton<_i82.EventDetailsUsecase>(
      () => _i82.EventDetailsUsecase(get<_i80.EventDetailsRepository>()));
  gh.lazySingleton<_i83.EventsRepository>(
      () => _i84.EventsRepositoryImpl(get<_i64.EventsSource>()));
  gh.lazySingleton<_i85.EventsUseCase>(
      () => _i85.EventsUseCase(get<_i83.EventsRepository>()));
  gh.factory<_i86.SearchCubit>(
      () => _i86.SearchCubit(get<_i68.SearchUsecase>()));
  gh.lazySingleton<_i87.SendCommentCubit>(() => _i87.SendCommentCubit(
        get<_i27.TokenProvider>(instanceName: 'CommentsTokenImpl'),
        get<_i34.UserCubit>(),
        get<_i61.CommentSectionUsecase>(),
        get<_i12.DeviceInfoProvider>(),
        get<_i79.CommentSectionCubit>(),
      ));
  gh.factory<_i88.TournamentDetailsCubit>(
      () => _i88.TournamentDetailsCubit(get<_i71.TournamentDetailsUsecase>()));
  gh.lazySingleton<_i89.AppVersionsCubit>(() => _i89.AppVersionsCubit(
        get<_i75.AppVersionsUseCase>(),
        get<_i22.PackageInfo>(),
      ));
  gh.lazySingleton<_i90.BannersCubit>(() => _i90.BannersCubit(
        get<_i78.BannersUseCase>(),
        get<_i9.CachedBannersCubit>(),
      ));
  gh.factory<_i91.EventDetailsCubit>(
      () => _i91.EventDetailsCubit(get<_i82.EventDetailsUsecase>()));
  gh.lazySingleton<_i92.EventsCubit>(
      () => _i92.EventsCubit(get<_i85.EventsUseCase>()));
  return get;
}
