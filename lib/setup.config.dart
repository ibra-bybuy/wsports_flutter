// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/api/interceptors/log_interceptor.dart' as _i42;
import 'core/api/main_api.dart' as _i44;
import 'core/components/loader/alert_loader/alert_loader.dart' as _i3;
import 'core/cubits/cached/banners_cubit/banners_cubit.dart' as _i8;
import 'core/cubits/cached/event_list_cubit/event_list_cubit.dart' as _i17;
import 'core/cubits/cached/event_scores/event_scores_cubit.dart' as _i9;
import 'core/cubits/cached/lang/lang_cubit.dart' as _i11;
import 'core/cubits/cached/tournaments_cubit/tournaments_cubit.dart' as _i12;
import 'core/cubits/cached/urls_cubit/urls_cubit.dart' as _i36;
import 'core/cubits/cached/user_cubit/user_cubit.dart' as _i37;
import 'features/comment_section/data/repositories/comment_section_impl.dart'
    as _i62;
import 'features/comment_section/data/sources/comment_section_source.dart'
    as _i40;
import 'features/comment_section/data/sources/comment_section_websocket.dart'
    as _i41;
import 'features/comment_section/domain/repositories/comment_section_repository.dart'
    as _i61;
import 'features/comment_section/domain/usecases/comment_section_usecase.dart'
    as _i63;
import 'features/comment_section/presentation/cubits/comment_section_cubit.dart'
    as _i87;
import 'features/comment_section/presentation/cubits/send_comment/send_comment_cubit.dart'
    as _i102;
import 'features/event_details/data/repositories/event_details_impl.dart'
    as _i89;
import 'features/event_details/data/repositories/event_score_impl.dart' as _i92;
import 'features/event_details/data/sources/event_details_network.dart' as _i65;
import 'features/event_details/data/sources/event_details_source.dart' as _i64;
import 'features/event_details/data/sources/event_score_network.dart' as _i67;
import 'features/event_details/data/sources/event_score_source.dart' as _i66;
import 'features/event_details/domain/repositories/event_details_repository.dart'
    as _i88;
import 'features/event_details/domain/repositories/event_score_repository.dart'
    as _i91;
import 'features/event_details/domain/usecases/event_details_usecase.dart'
    as _i90;
import 'features/event_details/domain/usecases/event_score_usecase.dart'
    as _i93;
import 'features/event_details/presentation/cubits/event_details_cubit.dart'
    as _i107;
import 'features/event_details/presentation/cubits/event_score_cubit.dart'
    as _i108;
import 'features/fighter/data/repositories/fighter_impl.dart' as _i98;
import 'features/fighter/data/sources/fighter_network.dart' as _i71;
import 'features/fighter/data/sources/fighter_source.dart' as _i70;
import 'features/fighter/domain/repositories/fighter_repository.dart' as _i97;
import 'features/fighter/domain/usecases/fighter_usecase.dart' as _i99;
import 'features/fighter/presentation/cubits/cached/cached_fighter_cubit.dart'
    as _i10;
import 'features/fighter/presentation/cubits/fighter_cubit.dart' as _i110;
import 'features/fighter/presentation/cubits/fights_cubit.dart' as _i100;
import 'features/home/data/repositories/app_versions_impl.dart' as _i82;
import 'features/home/data/repositories/banners_impl.dart' as _i85;
import 'features/home/data/repositories/events_impl.dart' as _i95;
import 'features/home/data/sources/app_versions_network.dart' as _i58;
import 'features/home/data/sources/app_versions_source.dart' as _i57;
import 'features/home/data/sources/banners_network.dart' as _i60;
import 'features/home/data/sources/banners_source.dart' as _i59;
import 'features/home/data/sources/events_network.dart' as _i69;
import 'features/home/data/sources/events_source.dart' as _i68;
import 'features/home/domain/repositories/app_versions_repository.dart' as _i81;
import 'features/home/domain/repositories/banners_repository.dart' as _i84;
import 'features/home/domain/repositories/events_repository.dart' as _i94;
import 'features/home/domain/usecases/app_versions_usecase.dart' as _i83;
import 'features/home/domain/usecases/banners_usecase.dart' as _i86;
import 'features/home/domain/usecases/events_usecase.dart' as _i96;
import 'features/home/presentation/cubits/app_versions/app_versions_cubit.dart'
    as _i105;
import 'features/home/presentation/cubits/banners_cubit.dart' as _i106;
import 'features/home/presentation/cubits/events/events_cubit.dart' as _i109;
import 'features/main/data/repositories/main_impl.dart' as _i46;
import 'features/main/data/sources/main_network.dart' as _i26;
import 'features/main/data/sources/main_source.dart' as _i25;
import 'features/main/domain/repositories/main_repository.dart' as _i45;
import 'features/main/domain/usecases/main_usecase.dart' as _i47;
import 'features/main/presentation/cubits/main_cubit.dart' as _i24;
import 'features/profile/data/repositories/profile_impl.dart' as _i49;
import 'features/profile/data/sources/profile_network.dart' as _i31;
import 'features/profile/data/sources/profile_source.dart' as _i30;
import 'features/profile/domain/repositories/profile_repository.dart' as _i48;
import 'features/profile/domain/usecases/profile_usecase.dart' as _i50;
import 'features/profile/presentation/cubits/profile_cubit.dart' as _i29;
import 'features/search/data/repositories/search_impl.dart' as _i73;
import 'features/search/data/sources/search_network.dart' as _i52;
import 'features/search/data/sources/search_source.dart' as _i51;
import 'features/search/domain/repositories/search_repository.dart' as _i72;
import 'features/search/domain/usecases/search_usecase.dart' as _i74;
import 'features/search/presentation/cubits/search_cubit.dart' as _i101;
import 'features/tournament_details/data/repositories/tournament_details_impl.dart'
    as _i76;
import 'features/tournament_details/data/sources/tournament_details_network.dart'
    as _i54;
import 'features/tournament_details/data/sources/tournament_details_source.dart'
    as _i53;
import 'features/tournament_details/domain/repositories/tournament_details_repository.dart'
    as _i75;
import 'features/tournament_details/domain/usecases/tournament_details_usecase.dart'
    as _i77;
import 'features/tournament_details/presentation/cubits/tournament_details_cubit.dart'
    as _i103;
import 'features/tournaments/data/repositories/tournaments_impl.dart' as _i79;
import 'features/tournaments/data/sources/tournaments_network.dart' as _i56;
import 'features/tournaments/data/sources/tournaments_source.dart' as _i55;
import 'features/tournaments/domain/repositories/tournaments_repository.dart'
    as _i78;
import 'features/tournaments/domain/usecases/tournaments_usecase.dart' as _i80;
import 'features/tournaments/presentation/cubits/tournaments_cubit.dart'
    as _i104;
import 'providers/app_update/app_update.dart' as _i5;
import 'providers/app_update/ota_update.dart' as _i6;
import 'providers/cache_manager/cache_manager.dart' as _i7;
import 'providers/device_info/device_info_plus.dart' as _i14;
import 'providers/device_info/device_info_provider.dart' as _i13;
import 'providers/emoji/emoji_impl.dart' as _i16;
import 'providers/emoji/emoji_provider.dart' as _i15;
import 'providers/event_notifications/event_notifications_provider.dart'
    as _i43;
import 'providers/jwt/comments_token.dart' as _i33;
import 'providers/jwt/token_provider.dart' as _i32;
import 'providers/local_notifications/local_notifications.dart' as _i18;
import 'providers/local_notifications/local_notifications_impl.dart' as _i19;
import 'providers/logger/logger_provider.dart' as _i20;
import 'providers/logger/my_logger.dart' as _i21;
import 'providers/logo/logo_impl.dart' as _i23;
import 'providers/logo/logo_provider.dart' as _i22;
import 'providers/package_info/package_info.dart' as _i27;
import 'providers/package_info/package_info_plus.dart' as _i28;
import 'providers/translit/translit_impl.dart' as _i35;
import 'providers/translit/translit_provider.dart' as _i34;
import 'providers/websocket/socket_io.dart' as _i39;
import 'providers/websocket/websocket_provider.dart' as _i38;
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
  gh.lazySingleton<_i9.CachedEventScoresCubit>(
      () => _i9.CachedEventScoresCubit());
  gh.factoryParam<_i10.CachedFighterCubit, String, dynamic>((
    fighterId,
    _,
  ) =>
      _i10.CachedFighterCubit(fighterId));
  gh.lazySingleton<_i11.CachedLangCubit>(() => _i11.CachedLangCubit());
  gh.lazySingleton<_i12.CachedTournamentsCubit>(
      () => _i12.CachedTournamentsCubit());
  gh.lazySingleton<_i13.DeviceInfoProvider>(() => _i14.DeviceInfoPlus());
  gh.lazySingleton<_i15.EmojiProvider>(() => _i16.EmojiImpl());
  gh.factoryParam<_i17.EventListCubit, String, dynamic>((
    key,
    _,
  ) =>
      _i17.EventListCubit(key));
  gh.lazySingleton<_i18.LocalNotifications>(
      () => _i19.LocalNotificationsImpl());
  gh.singleton<_i20.LoggerProvider>(_i21.MyLogger());
  gh.lazySingleton<_i22.LogoProvider>(() => _i23.LogoProviderImpl());
  gh.factory<_i24.MainCubit>(() => _i24.MainCubit());
  gh.lazySingleton<_i25.MainSource>(() => _i26.MainNetworkSource());
  gh.lazySingleton<_i27.PackageInfo>(() => _i28.PackageInfoPlusImpl());
  gh.factory<_i29.ProfileCubit>(() => _i29.ProfileCubit());
  gh.lazySingleton<_i30.ProfileSource>(() => _i31.ProfileNetworkSource());
  gh.lazySingleton<_i32.TokenProvider>(
    () => _i33.CommentsToken(),
    instanceName: 'CommentsTokenImpl',
  );
  gh.lazySingleton<_i34.TranslitProvider>(() => _i35.TranslitImpl());
  gh.lazySingleton<_i36.UrlsCubit>(() => _i36.UrlsCubit());
  gh.lazySingleton<_i37.UserCubit>(() => _i37.UserCubit());
  gh.factory<_i38.WebSocketProvider>(
    () => _i39.SocketIo(get<_i20.LoggerProvider>()),
    instanceName: 'SocketIoImpl',
  );
  gh.lazySingleton<_i40.CommentSectionSource>(
      () => _i41.CommentSectionWebsocketSource(
            get<_i38.WebSocketProvider>(instanceName: 'SocketIoImpl'),
            get<_i36.UrlsCubit>(),
          ));
  gh.lazySingleton<_i42.CustomLogInterceptor>(
      () => _i42.CustomLogInterceptor(get<_i20.LoggerProvider>()));
  gh.lazySingleton<_i43.EventNotificationsProvider>(
      () => _i43.EventNotificationsProvider(
            get<_i18.LocalNotifications>(),
            get<_i4.AppRouter>(),
          ));
  gh.factory<_i44.MainApi>(() => _i44.MainApi(
        get<_i36.UrlsCubit>(),
        get<_i42.CustomLogInterceptor>(),
      ));
  gh.lazySingleton<_i45.MainRepository>(
      () => _i46.MainRepositoryImpl(get<_i25.MainSource>()));
  gh.lazySingleton<_i47.MainUsecase>(
      () => _i47.MainUsecase(get<_i45.MainRepository>()));
  gh.lazySingleton<_i48.ProfileRepository>(
      () => _i49.ProfileRepositoryImpl(get<_i30.ProfileSource>()));
  gh.lazySingleton<_i50.ProfileUsecase>(
      () => _i50.ProfileUsecase(get<_i48.ProfileRepository>()));
  gh.lazySingleton<_i51.SearchSource>(
      () => _i52.SearchNetworkSource(get<_i44.MainApi>()));
  gh.lazySingleton<_i53.TournamentDetailsSource>(
      () => _i54.TournamentDetailsNetworkSource(get<_i44.MainApi>()));
  gh.lazySingleton<_i55.TournamentsSource>(
      () => _i56.TournamentsNetworkSource(get<_i44.MainApi>()));
  gh.lazySingleton<_i57.AppVersionsSource>(
      () => _i58.AppVersionsNetwork(get<_i44.MainApi>()));
  gh.lazySingleton<_i59.BannersSource>(
      () => _i60.BannersNetworkSource(get<_i44.MainApi>()));
  gh.lazySingleton<_i61.CommentSectionRepository>(() =>
      _i62.CommentSectionRepositoryImpl(get<_i40.CommentSectionSource>()));
  gh.lazySingleton<_i63.CommentSectionUsecase>(
      () => _i63.CommentSectionUsecase(get<_i61.CommentSectionRepository>()));
  gh.lazySingleton<_i64.EventDetailsSource>(
      () => _i65.EventDetailsNetworkSource(get<_i44.MainApi>()));
  gh.lazySingleton<_i66.EventScoreSource>(() => _i67.EventScoreNetwork(
        get<_i44.MainApi>(),
        get<_i20.LoggerProvider>(),
      ));
  gh.lazySingleton<_i68.EventsSource>(
      () => _i69.EventsNetwork(get<_i44.MainApi>()));
  gh.lazySingleton<_i70.FighterSource>(() => _i71.FighterUFCSource(
        get<_i44.MainApi>(),
        get<_i20.LoggerProvider>(),
      ));
  gh.lazySingleton<_i72.SearchRepository>(
      () => _i73.SearchRepositoryImpl(get<_i51.SearchSource>()));
  gh.lazySingleton<_i74.SearchUsecase>(
      () => _i74.SearchUsecase(get<_i72.SearchRepository>()));
  gh.lazySingleton<_i75.TournamentDetailsRepository>(() =>
      _i76.TournamentDetailsRepositoryImpl(
          get<_i53.TournamentDetailsSource>()));
  gh.lazySingleton<_i77.TournamentDetailsUsecase>(() =>
      _i77.TournamentDetailsUsecase(get<_i75.TournamentDetailsRepository>()));
  gh.lazySingleton<_i78.TournamentsRepository>(
      () => _i79.TournamentsRepositoryImpl(get<_i55.TournamentsSource>()));
  gh.lazySingleton<_i80.TournamentsUsecase>(
      () => _i80.TournamentsUsecase(get<_i78.TournamentsRepository>()));
  gh.lazySingleton<_i81.AppVersionsRepository>(
      () => _i82.AppVersionsRepositoryImpl(get<_i57.AppVersionsSource>()));
  gh.lazySingleton<_i83.AppVersionsUseCase>(
      () => _i83.AppVersionsUseCase(get<_i81.AppVersionsRepository>()));
  gh.lazySingleton<_i84.BannersRepository>(
      () => _i85.BannersRepositoryImpl(get<_i59.BannersSource>()));
  gh.lazySingleton<_i86.BannersUseCase>(
      () => _i86.BannersUseCase(get<_i84.BannersRepository>()));
  gh.lazySingleton<_i87.CommentSectionCubit>(() => _i87.CommentSectionCubit(
        get<_i63.CommentSectionUsecase>(),
        get<_i32.TokenProvider>(instanceName: 'CommentsTokenImpl'),
      ));
  gh.lazySingleton<_i88.EventDetailsRepository>(
      () => _i89.EventDetailsRepositoryImpl(get<_i64.EventDetailsSource>()));
  gh.lazySingleton<_i90.EventDetailsUsecase>(
      () => _i90.EventDetailsUsecase(get<_i88.EventDetailsRepository>()));
  gh.lazySingleton<_i91.EventScoreRepository>(
      () => _i92.EventScoreRepositoryImpl(get<_i66.EventScoreSource>()));
  gh.lazySingleton<_i93.EventScoreUsecase>(
      () => _i93.EventScoreUsecase(get<_i91.EventScoreRepository>()));
  gh.lazySingleton<_i94.EventsRepository>(
      () => _i95.EventsRepositoryImpl(get<_i68.EventsSource>()));
  gh.lazySingleton<_i96.EventsUseCase>(
      () => _i96.EventsUseCase(get<_i94.EventsRepository>()));
  gh.lazySingleton<_i97.FighterRepository>(
      () => _i98.FighterRepositoryImpl(get<_i70.FighterSource>()));
  gh.lazySingleton<_i99.FighterUsecase>(
      () => _i99.FighterUsecase(get<_i97.FighterRepository>()));
  gh.factory<_i100.FightsCubit>(
      () => _i100.FightsCubit(get<_i99.FighterUsecase>()));
  gh.factory<_i101.SearchCubit>(
      () => _i101.SearchCubit(get<_i74.SearchUsecase>()));
  gh.lazySingleton<_i102.SendCommentCubit>(() => _i102.SendCommentCubit(
        get<_i32.TokenProvider>(instanceName: 'CommentsTokenImpl'),
        get<_i37.UserCubit>(),
        get<_i63.CommentSectionUsecase>(),
        get<_i13.DeviceInfoProvider>(),
        get<_i87.CommentSectionCubit>(),
      ));
  gh.factory<_i103.TournamentDetailsCubit>(
      () => _i103.TournamentDetailsCubit(get<_i77.TournamentDetailsUsecase>()));
  gh.lazySingleton<_i104.TournamentsCubit>(() => _i104.TournamentsCubit(
        get<_i12.CachedTournamentsCubit>(),
        get<_i80.TournamentsUsecase>(),
      ));
  gh.lazySingleton<_i105.AppVersionsCubit>(() => _i105.AppVersionsCubit(
        get<_i83.AppVersionsUseCase>(),
        get<_i27.PackageInfo>(),
      ));
  gh.lazySingleton<_i106.BannersCubit>(() => _i106.BannersCubit(
        get<_i86.BannersUseCase>(),
        get<_i8.CachedBannersCubit>(),
      ));
  gh.factory<_i107.EventDetailsCubit>(
      () => _i107.EventDetailsCubit(get<_i90.EventDetailsUsecase>()));
  gh.lazySingleton<_i108.EventScoreCubit>(() => _i108.EventScoreCubit(
        get<_i93.EventScoreUsecase>(),
        get<_i9.CachedEventScoresCubit>(),
      ));
  gh.lazySingleton<_i109.EventsCubit>(
      () => _i109.EventsCubit(get<_i96.EventsUseCase>()));
  gh.factory<_i110.FighterCubit>(() => _i110.FighterCubit(
        get<_i99.FighterUsecase>(),
        get<_i100.FightsCubit>(),
      ));
  return get;
}
