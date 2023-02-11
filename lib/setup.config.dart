// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/api/interceptors/log_interceptor.dart' as _i36;
import 'core/api/main_api.dart' as _i38;
import 'core/components/loader/alert_loader/alert_loader.dart' as _i3;
import 'core/cubits/cached/banners_cubit/banners_cubit.dart' as _i8;
import 'core/cubits/cached/event_list_cubit/event_list_cubit.dart' as _i13;
import 'core/cubits/cached/lang/lang_cubit.dart' as _i9;
import 'core/cubits/cached/tournaments_cubit/tournaments_cubit.dart' as _i10;
import 'core/cubits/cached/urls_cubit/urls_cubit.dart' as _i30;
import 'core/cubits/cached/user_cubit/user_cubit.dart' as _i31;
import 'features/comment_section/data/repositories/comment_section_impl.dart'
    as _i56;
import 'features/comment_section/data/sources/comment_section_source.dart'
    as _i34;
import 'features/comment_section/data/sources/comment_section_websocket.dart'
    as _i35;
import 'features/comment_section/domain/repositories/comment_section_repository.dart'
    as _i55;
import 'features/comment_section/domain/usecases/comment_section_usecase.dart'
    as _i57;
import 'features/comment_section/presentation/cubits/comment_section_cubit.dart'
    as _i77;
import 'features/comment_section/presentation/cubits/send_comment/send_comment_cubit.dart'
    as _i85;
import 'features/event_details/data/repositories/event_details_impl.dart'
    as _i79;
import 'features/event_details/data/sources/event_details_network.dart' as _i59;
import 'features/event_details/data/sources/event_details_source.dart' as _i58;
import 'features/event_details/domain/repositories/event_details_repository.dart'
    as _i78;
import 'features/event_details/domain/usecases/event_details_usecase.dart'
    as _i80;
import 'features/event_details/presentation/cubits/event_details_cubit.dart'
    as _i90;
import 'features/home/data/repositories/app_versions_impl.dart' as _i72;
import 'features/home/data/repositories/banners_impl.dart' as _i75;
import 'features/home/data/repositories/events_impl.dart' as _i82;
import 'features/home/data/sources/app_versions_network.dart' as _i52;
import 'features/home/data/sources/app_versions_source.dart' as _i51;
import 'features/home/data/sources/banners_network.dart' as _i54;
import 'features/home/data/sources/banners_source.dart' as _i53;
import 'features/home/data/sources/events_network.dart' as _i61;
import 'features/home/data/sources/events_source.dart' as _i60;
import 'features/home/domain/repositories/app_versions_repository.dart' as _i71;
import 'features/home/domain/repositories/banners_repository.dart' as _i74;
import 'features/home/domain/repositories/events_repository.dart' as _i81;
import 'features/home/domain/usecases/app_versions_usecase.dart' as _i73;
import 'features/home/domain/usecases/banners_usecase.dart' as _i76;
import 'features/home/domain/usecases/events_usecase.dart' as _i83;
import 'features/home/presentation/cubits/app_versions/app_versions_cubit.dart'
    as _i88;
import 'features/home/presentation/cubits/banners_cubit.dart' as _i89;
import 'features/home/presentation/cubits/events/events_cubit.dart' as _i91;
import 'features/main/data/repositories/main_impl.dart' as _i40;
import 'features/main/data/sources/main_network.dart' as _i20;
import 'features/main/data/sources/main_source.dart' as _i19;
import 'features/main/domain/repositories/main_repository.dart' as _i39;
import 'features/main/domain/usecases/main_usecase.dart' as _i41;
import 'features/main/presentation/cubits/main_cubit.dart' as _i18;
import 'features/profile/data/repositories/profile_impl.dart' as _i43;
import 'features/profile/data/sources/profile_network.dart' as _i25;
import 'features/profile/data/sources/profile_source.dart' as _i24;
import 'features/profile/domain/repositories/profile_repository.dart' as _i42;
import 'features/profile/domain/usecases/profile_usecase.dart' as _i44;
import 'features/profile/presentation/cubits/profile_cubit.dart' as _i23;
import 'features/search/data/repositories/search_impl.dart' as _i63;
import 'features/search/data/sources/search_network.dart' as _i46;
import 'features/search/data/sources/search_source.dart' as _i45;
import 'features/search/domain/repositories/search_repository.dart' as _i62;
import 'features/search/domain/usecases/search_usecase.dart' as _i64;
import 'features/search/presentation/cubits/search_cubit.dart' as _i84;
import 'features/tournament_details/data/repositories/tournament_details_impl.dart'
    as _i66;
import 'features/tournament_details/data/sources/tournament_details_network.dart'
    as _i48;
import 'features/tournament_details/data/sources/tournament_details_source.dart'
    as _i47;
import 'features/tournament_details/domain/repositories/tournament_details_repository.dart'
    as _i65;
import 'features/tournament_details/domain/usecases/tournament_details_usecase.dart'
    as _i67;
import 'features/tournament_details/presentation/cubits/tournament_details_cubit.dart'
    as _i86;
import 'features/tournaments/data/repositories/tournaments_impl.dart' as _i69;
import 'features/tournaments/data/sources/tournaments_network.dart' as _i50;
import 'features/tournaments/data/sources/tournaments_source.dart' as _i49;
import 'features/tournaments/domain/repositories/tournaments_repository.dart'
    as _i68;
import 'features/tournaments/domain/usecases/tournaments_usecase.dart' as _i70;
import 'features/tournaments/presentation/cubits/tournaments_cubit.dart'
    as _i87;
import 'providers/app_update/app_update.dart' as _i5;
import 'providers/app_update/ota_update.dart' as _i6;
import 'providers/cache_manager/cache_manager.dart' as _i7;
import 'providers/device_info/device_info_plus.dart' as _i12;
import 'providers/device_info/device_info_provider.dart' as _i11;
import 'providers/event_notifications/event_notifications_provider.dart'
    as _i37;
import 'providers/jwt/comments_token.dart' as _i27;
import 'providers/jwt/token_provider.dart' as _i26;
import 'providers/local_notifications/local_notifications.dart' as _i14;
import 'providers/local_notifications/local_notifications_impl.dart' as _i15;
import 'providers/logger/logger_provider.dart' as _i16;
import 'providers/logger/my_logger.dart' as _i17;
import 'providers/package_info/package_info.dart' as _i21;
import 'providers/package_info/package_info_plus.dart' as _i22;
import 'providers/translit/translit_impl.dart' as _i29;
import 'providers/translit/translit_provider.dart' as _i28;
import 'providers/websocket/socket_io.dart' as _i33;
import 'providers/websocket/websocket_provider.dart' as _i32;
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
  gh.lazySingleton<_i9.CachedLangCubit>(() => _i9.CachedLangCubit());
  gh.lazySingleton<_i10.CachedTournamentsCubit>(
      () => _i10.CachedTournamentsCubit());
  gh.lazySingleton<_i11.DeviceInfoProvider>(() => _i12.DeviceInfoPlus());
  gh.factoryParam<_i13.EventListCubit, String, dynamic>((
    key,
    _,
  ) =>
      _i13.EventListCubit(key));
  gh.lazySingleton<_i14.LocalNotifications>(
      () => _i15.LocalNotificationsImpl());
  gh.singleton<_i16.LoggerProvider>(_i17.MyLogger());
  gh.factory<_i18.MainCubit>(() => _i18.MainCubit());
  gh.lazySingleton<_i19.MainSource>(() => _i20.MainNetworkSource());
  gh.lazySingleton<_i21.PackageInfo>(() => _i22.PackageInfoPlusImpl());
  gh.factory<_i23.ProfileCubit>(() => _i23.ProfileCubit());
  gh.lazySingleton<_i24.ProfileSource>(() => _i25.ProfileNetworkSource());
  gh.lazySingleton<_i26.TokenProvider>(
    () => _i27.CommentsToken(),
    instanceName: 'CommentsTokenImpl',
  );
  gh.lazySingleton<_i28.TranslitProvider>(() => _i29.TranslitImpl());
  gh.lazySingleton<_i30.UrlsCubit>(() => _i30.UrlsCubit());
  gh.lazySingleton<_i31.UserCubit>(() => _i31.UserCubit());
  gh.factory<_i32.WebSocketProvider>(
    () => _i33.SocketIo(get<_i16.LoggerProvider>()),
    instanceName: 'SocketIoImpl',
  );
  gh.lazySingleton<_i34.CommentSectionSource>(
      () => _i35.CommentSectionWebsocketSource(
            get<_i32.WebSocketProvider>(instanceName: 'SocketIoImpl'),
            get<_i30.UrlsCubit>(),
          ));
  gh.lazySingleton<_i36.CustomLogInterceptor>(
      () => _i36.CustomLogInterceptor(get<_i16.LoggerProvider>()));
  gh.lazySingleton<_i37.EventNotificationsProvider>(
      () => _i37.EventNotificationsProvider(
            get<_i14.LocalNotifications>(),
            get<_i4.AppRouter>(),
          ));
  gh.factory<_i38.MainApi>(() => _i38.MainApi(
        get<_i30.UrlsCubit>(),
        get<_i36.CustomLogInterceptor>(),
      ));
  gh.lazySingleton<_i39.MainRepository>(
      () => _i40.MainRepositoryImpl(get<_i19.MainSource>()));
  gh.lazySingleton<_i41.MainUsecase>(
      () => _i41.MainUsecase(get<_i39.MainRepository>()));
  gh.lazySingleton<_i42.ProfileRepository>(
      () => _i43.ProfileRepositoryImpl(get<_i24.ProfileSource>()));
  gh.lazySingleton<_i44.ProfileUsecase>(
      () => _i44.ProfileUsecase(get<_i42.ProfileRepository>()));
  gh.lazySingleton<_i45.SearchSource>(
      () => _i46.SearchNetworkSource(get<_i38.MainApi>()));
  gh.lazySingleton<_i47.TournamentDetailsSource>(
      () => _i48.TournamentDetailsNetworkSource(get<_i38.MainApi>()));
  gh.lazySingleton<_i49.TournamentsSource>(
      () => _i50.TournamentsNetworkSource(get<_i38.MainApi>()));
  gh.lazySingleton<_i51.AppVersionsSource>(
      () => _i52.AppVersionsNetwork(get<_i38.MainApi>()));
  gh.lazySingleton<_i53.BannersSource>(
      () => _i54.BannersNetworkSource(get<_i38.MainApi>()));
  gh.lazySingleton<_i55.CommentSectionRepository>(() =>
      _i56.CommentSectionRepositoryImpl(get<_i34.CommentSectionSource>()));
  gh.lazySingleton<_i57.CommentSectionUsecase>(
      () => _i57.CommentSectionUsecase(get<_i55.CommentSectionRepository>()));
  gh.lazySingleton<_i58.EventDetailsSource>(
      () => _i59.EventDetailsNetworkSource(get<_i38.MainApi>()));
  gh.lazySingleton<_i60.EventsSource>(
      () => _i61.EventsNetwork(get<_i38.MainApi>()));
  gh.lazySingleton<_i62.SearchRepository>(
      () => _i63.SearchRepositoryImpl(get<_i45.SearchSource>()));
  gh.lazySingleton<_i64.SearchUsecase>(
      () => _i64.SearchUsecase(get<_i62.SearchRepository>()));
  gh.lazySingleton<_i65.TournamentDetailsRepository>(() =>
      _i66.TournamentDetailsRepositoryImpl(
          get<_i47.TournamentDetailsSource>()));
  gh.lazySingleton<_i67.TournamentDetailsUsecase>(() =>
      _i67.TournamentDetailsUsecase(get<_i65.TournamentDetailsRepository>()));
  gh.lazySingleton<_i68.TournamentsRepository>(
      () => _i69.TournamentsRepositoryImpl(get<_i49.TournamentsSource>()));
  gh.lazySingleton<_i70.TournamentsUsecase>(
      () => _i70.TournamentsUsecase(get<_i68.TournamentsRepository>()));
  gh.lazySingleton<_i71.AppVersionsRepository>(
      () => _i72.AppVersionsRepositoryImpl(get<_i51.AppVersionsSource>()));
  gh.lazySingleton<_i73.AppVersionsUseCase>(
      () => _i73.AppVersionsUseCase(get<_i71.AppVersionsRepository>()));
  gh.lazySingleton<_i74.BannersRepository>(
      () => _i75.BannersRepositoryImpl(get<_i53.BannersSource>()));
  gh.lazySingleton<_i76.BannersUseCase>(
      () => _i76.BannersUseCase(get<_i74.BannersRepository>()));
  gh.lazySingleton<_i77.CommentSectionCubit>(() => _i77.CommentSectionCubit(
        get<_i57.CommentSectionUsecase>(),
        get<_i26.TokenProvider>(instanceName: 'CommentsTokenImpl'),
      ));
  gh.lazySingleton<_i78.EventDetailsRepository>(
      () => _i79.EventDetailsRepositoryImpl(get<_i58.EventDetailsSource>()));
  gh.lazySingleton<_i80.EventDetailsUsecase>(
      () => _i80.EventDetailsUsecase(get<_i78.EventDetailsRepository>()));
  gh.lazySingleton<_i81.EventsRepository>(
      () => _i82.EventsRepositoryImpl(get<_i60.EventsSource>()));
  gh.lazySingleton<_i83.EventsUseCase>(
      () => _i83.EventsUseCase(get<_i81.EventsRepository>()));
  gh.factory<_i84.SearchCubit>(
      () => _i84.SearchCubit(get<_i64.SearchUsecase>()));
  gh.lazySingleton<_i85.SendCommentCubit>(() => _i85.SendCommentCubit(
        get<_i26.TokenProvider>(instanceName: 'CommentsTokenImpl'),
        get<_i31.UserCubit>(),
        get<_i57.CommentSectionUsecase>(),
        get<_i11.DeviceInfoProvider>(),
        get<_i77.CommentSectionCubit>(),
      ));
  gh.factory<_i86.TournamentDetailsCubit>(
      () => _i86.TournamentDetailsCubit(get<_i67.TournamentDetailsUsecase>()));
  gh.lazySingleton<_i87.TournamentsCubit>(() => _i87.TournamentsCubit(
        get<_i10.CachedTournamentsCubit>(),
        get<_i70.TournamentsUsecase>(),
      ));
  gh.lazySingleton<_i88.AppVersionsCubit>(() => _i88.AppVersionsCubit(
        get<_i73.AppVersionsUseCase>(),
        get<_i21.PackageInfo>(),
      ));
  gh.lazySingleton<_i89.BannersCubit>(() => _i89.BannersCubit(
        get<_i76.BannersUseCase>(),
        get<_i8.CachedBannersCubit>(),
      ));
  gh.factory<_i90.EventDetailsCubit>(
      () => _i90.EventDetailsCubit(get<_i80.EventDetailsUsecase>()));
  gh.lazySingleton<_i91.EventsCubit>(
      () => _i91.EventsCubit(get<_i83.EventsUseCase>()));
  return get;
}
