// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/api/interceptors/log_interceptor.dart' as _i41;
import 'core/api/main_api.dart' as _i43;
import 'core/components/loader/alert_loader/alert_loader.dart' as _i3;
import 'core/cubits/cached/banners_cubit/banners_cubit.dart' as _i8;
import 'core/cubits/cached/event_list_cubit/event_list_cubit.dart' as _i16;
import 'core/cubits/cached/lang/lang_cubit.dart' as _i10;
import 'core/cubits/cached/tournaments_cubit/tournaments_cubit.dart' as _i11;
import 'core/cubits/cached/urls_cubit/urls_cubit.dart' as _i35;
import 'core/cubits/cached/user_cubit/user_cubit.dart' as _i36;
import 'features/comment_section/data/repositories/comment_section_impl.dart'
    as _i61;
import 'features/comment_section/data/sources/comment_section_source.dart'
    as _i39;
import 'features/comment_section/data/sources/comment_section_websocket.dart'
    as _i40;
import 'features/comment_section/domain/repositories/comment_section_repository.dart'
    as _i60;
import 'features/comment_section/domain/usecases/comment_section_usecase.dart'
    as _i62;
import 'features/comment_section/presentation/cubits/comment_section_cubit.dart'
    as _i84;
import 'features/comment_section/presentation/cubits/send_comment/send_comment_cubit.dart'
    as _i95;
import 'features/event_details/data/repositories/event_details_impl.dart'
    as _i86;
import 'features/event_details/data/sources/event_details_network.dart' as _i64;
import 'features/event_details/data/sources/event_details_source.dart' as _i63;
import 'features/event_details/domain/repositories/event_details_repository.dart'
    as _i85;
import 'features/event_details/domain/usecases/event_details_usecase.dart'
    as _i87;
import 'features/event_details/presentation/cubits/event_details_cubit.dart'
    as _i100;
import 'features/fighter/data/repositories/fighter_impl.dart' as _i92;
import 'features/fighter/data/sources/fighter_network.dart' as _i68;
import 'features/fighter/data/sources/fighter_source.dart' as _i67;
import 'features/fighter/domain/repositories/fighter_repository.dart' as _i91;
import 'features/fighter/domain/usecases/fighter_usecase.dart' as _i93;
import 'features/fighter/presentation/cubits/cached/cached_fighter_cubit.dart'
    as _i9;
import 'features/fighter/presentation/cubits/fighter_cubit.dart' as _i102;
import 'features/home/data/repositories/app_versions_impl.dart' as _i79;
import 'features/home/data/repositories/banners_impl.dart' as _i82;
import 'features/home/data/repositories/events_impl.dart' as _i89;
import 'features/home/data/sources/app_versions_network.dart' as _i57;
import 'features/home/data/sources/app_versions_source.dart' as _i56;
import 'features/home/data/sources/banners_network.dart' as _i59;
import 'features/home/data/sources/banners_source.dart' as _i58;
import 'features/home/data/sources/events_network.dart' as _i66;
import 'features/home/data/sources/events_source.dart' as _i65;
import 'features/home/domain/repositories/app_versions_repository.dart' as _i78;
import 'features/home/domain/repositories/banners_repository.dart' as _i81;
import 'features/home/domain/repositories/events_repository.dart' as _i88;
import 'features/home/domain/usecases/app_versions_usecase.dart' as _i80;
import 'features/home/domain/usecases/banners_usecase.dart' as _i83;
import 'features/home/domain/usecases/events_usecase.dart' as _i90;
import 'features/home/presentation/cubits/app_versions/app_versions_cubit.dart'
    as _i98;
import 'features/home/presentation/cubits/banners_cubit.dart' as _i99;
import 'features/home/presentation/cubits/events/events_cubit.dart' as _i101;
import 'features/main/data/repositories/main_impl.dart' as _i45;
import 'features/main/data/sources/main_network.dart' as _i25;
import 'features/main/data/sources/main_source.dart' as _i24;
import 'features/main/domain/repositories/main_repository.dart' as _i44;
import 'features/main/domain/usecases/main_usecase.dart' as _i46;
import 'features/main/presentation/cubits/main_cubit.dart' as _i23;
import 'features/profile/data/repositories/profile_impl.dart' as _i48;
import 'features/profile/data/sources/profile_network.dart' as _i30;
import 'features/profile/data/sources/profile_source.dart' as _i29;
import 'features/profile/domain/repositories/profile_repository.dart' as _i47;
import 'features/profile/domain/usecases/profile_usecase.dart' as _i49;
import 'features/profile/presentation/cubits/profile_cubit.dart' as _i28;
import 'features/search/data/repositories/search_impl.dart' as _i70;
import 'features/search/data/sources/search_network.dart' as _i51;
import 'features/search/data/sources/search_source.dart' as _i50;
import 'features/search/domain/repositories/search_repository.dart' as _i69;
import 'features/search/domain/usecases/search_usecase.dart' as _i71;
import 'features/search/presentation/cubits/search_cubit.dart' as _i94;
import 'features/tournament_details/data/repositories/tournament_details_impl.dart'
    as _i73;
import 'features/tournament_details/data/sources/tournament_details_network.dart'
    as _i53;
import 'features/tournament_details/data/sources/tournament_details_source.dart'
    as _i52;
import 'features/tournament_details/domain/repositories/tournament_details_repository.dart'
    as _i72;
import 'features/tournament_details/domain/usecases/tournament_details_usecase.dart'
    as _i74;
import 'features/tournament_details/presentation/cubits/tournament_details_cubit.dart'
    as _i96;
import 'features/tournaments/data/repositories/tournaments_impl.dart' as _i76;
import 'features/tournaments/data/sources/tournaments_network.dart' as _i55;
import 'features/tournaments/data/sources/tournaments_source.dart' as _i54;
import 'features/tournaments/domain/repositories/tournaments_repository.dart'
    as _i75;
import 'features/tournaments/domain/usecases/tournaments_usecase.dart' as _i77;
import 'features/tournaments/presentation/cubits/tournaments_cubit.dart'
    as _i97;
import 'providers/app_update/app_update.dart' as _i5;
import 'providers/app_update/ota_update.dart' as _i6;
import 'providers/cache_manager/cache_manager.dart' as _i7;
import 'providers/device_info/device_info_plus.dart' as _i13;
import 'providers/device_info/device_info_provider.dart' as _i12;
import 'providers/emoji/emoji_impl.dart' as _i15;
import 'providers/emoji/emoji_provider.dart' as _i14;
import 'providers/event_notifications/event_notifications_provider.dart'
    as _i42;
import 'providers/jwt/comments_token.dart' as _i32;
import 'providers/jwt/token_provider.dart' as _i31;
import 'providers/local_notifications/local_notifications.dart' as _i17;
import 'providers/local_notifications/local_notifications_impl.dart' as _i18;
import 'providers/logger/logger_provider.dart' as _i19;
import 'providers/logger/my_logger.dart' as _i20;
import 'providers/logo/logo_impl.dart' as _i22;
import 'providers/logo/logo_provider.dart' as _i21;
import 'providers/package_info/package_info.dart' as _i26;
import 'providers/package_info/package_info_plus.dart' as _i27;
import 'providers/translit/translit_impl.dart' as _i34;
import 'providers/translit/translit_provider.dart' as _i33;
import 'providers/websocket/socket_io.dart' as _i38;
import 'providers/websocket/websocket_provider.dart' as _i37;
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
  gh.factoryParam<_i9.CachedFighterCubit, String, dynamic>((
    fighterId,
    _,
  ) =>
      _i9.CachedFighterCubit(fighterId));
  gh.lazySingleton<_i10.CachedLangCubit>(() => _i10.CachedLangCubit());
  gh.lazySingleton<_i11.CachedTournamentsCubit>(
      () => _i11.CachedTournamentsCubit());
  gh.lazySingleton<_i12.DeviceInfoProvider>(() => _i13.DeviceInfoPlus());
  gh.lazySingleton<_i14.EmojiProvider>(() => _i15.EmojiImpl());
  gh.factoryParam<_i16.EventListCubit, String, dynamic>((
    key,
    _,
  ) =>
      _i16.EventListCubit(key));
  gh.lazySingleton<_i17.LocalNotifications>(
      () => _i18.LocalNotificationsImpl());
  gh.singleton<_i19.LoggerProvider>(_i20.MyLogger());
  gh.lazySingleton<_i21.LogoProvider>(() => _i22.LogoProviderImpl());
  gh.factory<_i23.MainCubit>(() => _i23.MainCubit());
  gh.lazySingleton<_i24.MainSource>(() => _i25.MainNetworkSource());
  gh.lazySingleton<_i26.PackageInfo>(() => _i27.PackageInfoPlusImpl());
  gh.factory<_i28.ProfileCubit>(() => _i28.ProfileCubit());
  gh.lazySingleton<_i29.ProfileSource>(() => _i30.ProfileNetworkSource());
  gh.lazySingleton<_i31.TokenProvider>(
    () => _i32.CommentsToken(),
    instanceName: 'CommentsTokenImpl',
  );
  gh.lazySingleton<_i33.TranslitProvider>(() => _i34.TranslitImpl());
  gh.lazySingleton<_i35.UrlsCubit>(() => _i35.UrlsCubit());
  gh.lazySingleton<_i36.UserCubit>(() => _i36.UserCubit());
  gh.factory<_i37.WebSocketProvider>(
    () => _i38.SocketIo(get<_i19.LoggerProvider>()),
    instanceName: 'SocketIoImpl',
  );
  gh.lazySingleton<_i39.CommentSectionSource>(
      () => _i40.CommentSectionWebsocketSource(
            get<_i37.WebSocketProvider>(instanceName: 'SocketIoImpl'),
            get<_i35.UrlsCubit>(),
          ));
  gh.lazySingleton<_i41.CustomLogInterceptor>(
      () => _i41.CustomLogInterceptor(get<_i19.LoggerProvider>()));
  gh.lazySingleton<_i42.EventNotificationsProvider>(
      () => _i42.EventNotificationsProvider(
            get<_i17.LocalNotifications>(),
            get<_i4.AppRouter>(),
          ));
  gh.factory<_i43.MainApi>(() => _i43.MainApi(
        get<_i35.UrlsCubit>(),
        get<_i41.CustomLogInterceptor>(),
      ));
  gh.lazySingleton<_i44.MainRepository>(
      () => _i45.MainRepositoryImpl(get<_i24.MainSource>()));
  gh.lazySingleton<_i46.MainUsecase>(
      () => _i46.MainUsecase(get<_i44.MainRepository>()));
  gh.lazySingleton<_i47.ProfileRepository>(
      () => _i48.ProfileRepositoryImpl(get<_i29.ProfileSource>()));
  gh.lazySingleton<_i49.ProfileUsecase>(
      () => _i49.ProfileUsecase(get<_i47.ProfileRepository>()));
  gh.lazySingleton<_i50.SearchSource>(
      () => _i51.SearchNetworkSource(get<_i43.MainApi>()));
  gh.lazySingleton<_i52.TournamentDetailsSource>(
      () => _i53.TournamentDetailsNetworkSource(get<_i43.MainApi>()));
  gh.lazySingleton<_i54.TournamentsSource>(
      () => _i55.TournamentsNetworkSource(get<_i43.MainApi>()));
  gh.lazySingleton<_i56.AppVersionsSource>(
      () => _i57.AppVersionsNetwork(get<_i43.MainApi>()));
  gh.lazySingleton<_i58.BannersSource>(
      () => _i59.BannersNetworkSource(get<_i43.MainApi>()));
  gh.lazySingleton<_i60.CommentSectionRepository>(() =>
      _i61.CommentSectionRepositoryImpl(get<_i39.CommentSectionSource>()));
  gh.lazySingleton<_i62.CommentSectionUsecase>(
      () => _i62.CommentSectionUsecase(get<_i60.CommentSectionRepository>()));
  gh.lazySingleton<_i63.EventDetailsSource>(
      () => _i64.EventDetailsNetworkSource(get<_i43.MainApi>()));
  gh.lazySingleton<_i65.EventsSource>(
      () => _i66.EventsNetwork(get<_i43.MainApi>()));
  gh.lazySingleton<_i67.FighterSource>(
      () => _i68.FighterUFCSource(get<_i43.MainApi>()));
  gh.lazySingleton<_i69.SearchRepository>(
      () => _i70.SearchRepositoryImpl(get<_i50.SearchSource>()));
  gh.lazySingleton<_i71.SearchUsecase>(
      () => _i71.SearchUsecase(get<_i69.SearchRepository>()));
  gh.lazySingleton<_i72.TournamentDetailsRepository>(() =>
      _i73.TournamentDetailsRepositoryImpl(
          get<_i52.TournamentDetailsSource>()));
  gh.lazySingleton<_i74.TournamentDetailsUsecase>(() =>
      _i74.TournamentDetailsUsecase(get<_i72.TournamentDetailsRepository>()));
  gh.lazySingleton<_i75.TournamentsRepository>(
      () => _i76.TournamentsRepositoryImpl(get<_i54.TournamentsSource>()));
  gh.lazySingleton<_i77.TournamentsUsecase>(
      () => _i77.TournamentsUsecase(get<_i75.TournamentsRepository>()));
  gh.lazySingleton<_i78.AppVersionsRepository>(
      () => _i79.AppVersionsRepositoryImpl(get<_i56.AppVersionsSource>()));
  gh.lazySingleton<_i80.AppVersionsUseCase>(
      () => _i80.AppVersionsUseCase(get<_i78.AppVersionsRepository>()));
  gh.lazySingleton<_i81.BannersRepository>(
      () => _i82.BannersRepositoryImpl(get<_i58.BannersSource>()));
  gh.lazySingleton<_i83.BannersUseCase>(
      () => _i83.BannersUseCase(get<_i81.BannersRepository>()));
  gh.lazySingleton<_i84.CommentSectionCubit>(() => _i84.CommentSectionCubit(
        get<_i62.CommentSectionUsecase>(),
        get<_i31.TokenProvider>(instanceName: 'CommentsTokenImpl'),
      ));
  gh.lazySingleton<_i85.EventDetailsRepository>(
      () => _i86.EventDetailsRepositoryImpl(get<_i63.EventDetailsSource>()));
  gh.lazySingleton<_i87.EventDetailsUsecase>(
      () => _i87.EventDetailsUsecase(get<_i85.EventDetailsRepository>()));
  gh.lazySingleton<_i88.EventsRepository>(
      () => _i89.EventsRepositoryImpl(get<_i65.EventsSource>()));
  gh.lazySingleton<_i90.EventsUseCase>(
      () => _i90.EventsUseCase(get<_i88.EventsRepository>()));
  gh.lazySingleton<_i91.FighterRepository>(
      () => _i92.FighterRepositoryImpl(get<_i67.FighterSource>()));
  gh.lazySingleton<_i93.FighterUsecase>(
      () => _i93.FighterUsecase(get<_i91.FighterRepository>()));
  gh.factory<_i94.SearchCubit>(
      () => _i94.SearchCubit(get<_i71.SearchUsecase>()));
  gh.lazySingleton<_i95.SendCommentCubit>(() => _i95.SendCommentCubit(
        get<_i31.TokenProvider>(instanceName: 'CommentsTokenImpl'),
        get<_i36.UserCubit>(),
        get<_i62.CommentSectionUsecase>(),
        get<_i12.DeviceInfoProvider>(),
        get<_i84.CommentSectionCubit>(),
      ));
  gh.factory<_i96.TournamentDetailsCubit>(
      () => _i96.TournamentDetailsCubit(get<_i74.TournamentDetailsUsecase>()));
  gh.lazySingleton<_i97.TournamentsCubit>(() => _i97.TournamentsCubit(
        get<_i11.CachedTournamentsCubit>(),
        get<_i77.TournamentsUsecase>(),
      ));
  gh.lazySingleton<_i98.AppVersionsCubit>(() => _i98.AppVersionsCubit(
        get<_i80.AppVersionsUseCase>(),
        get<_i26.PackageInfo>(),
      ));
  gh.lazySingleton<_i99.BannersCubit>(() => _i99.BannersCubit(
        get<_i83.BannersUseCase>(),
        get<_i8.CachedBannersCubit>(),
      ));
  gh.factory<_i100.EventDetailsCubit>(
      () => _i100.EventDetailsCubit(get<_i87.EventDetailsUsecase>()));
  gh.lazySingleton<_i101.EventsCubit>(
      () => _i101.EventsCubit(get<_i90.EventsUseCase>()));
  gh.factory<_i102.FighterCubit>(
      () => _i102.FighterCubit(get<_i93.FighterUsecase>()));
  return get;
}
