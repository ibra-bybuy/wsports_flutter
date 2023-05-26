// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/api/interceptors/log_interceptor.dart' as _i43;
import 'core/api/main_api.dart' as _i45;
import 'core/components/loader/alert_loader/alert_loader.dart' as _i3;
import 'core/cubits/cached/banners_cubit/banners_cubit.dart' as _i8;
import 'core/cubits/cached/event_list_cubit/event_list_cubit.dart' as _i17;
import 'core/cubits/cached/event_scores/event_scores_cubit.dart' as _i9;
import 'core/cubits/cached/lang/lang_cubit.dart' as _i11;
import 'core/cubits/cached/mode/mode_cubit.dart' as _i27;
import 'core/cubits/cached/tournaments_cubit/tournaments_cubit.dart' as _i12;
import 'core/cubits/cached/urls_cubit/urls_cubit.dart' as _i37;
import 'core/cubits/cached/user_cubit/user_cubit.dart' as _i38;
import 'features/comment_section/data/repositories/comment_section_impl.dart'
    as _i63;
import 'features/comment_section/data/sources/comment_section_source.dart'
    as _i41;
import 'features/comment_section/data/sources/comment_section_websocket.dart'
    as _i42;
import 'features/comment_section/domain/repositories/comment_section_repository.dart'
    as _i62;
import 'features/comment_section/domain/usecases/comment_section_usecase.dart'
    as _i64;
import 'features/comment_section/presentation/cubits/comment_section_cubit.dart'
    as _i88;
import 'features/comment_section/presentation/cubits/send_comment/send_comment_cubit.dart'
    as _i103;
import 'features/event_details/data/repositories/event_details_impl.dart'
    as _i90;
import 'features/event_details/data/repositories/event_score_impl.dart' as _i93;
import 'features/event_details/data/sources/event_details_network.dart' as _i66;
import 'features/event_details/data/sources/event_details_source.dart' as _i65;
import 'features/event_details/data/sources/event_score_network.dart' as _i68;
import 'features/event_details/data/sources/event_score_source.dart' as _i67;
import 'features/event_details/domain/repositories/event_details_repository.dart'
    as _i89;
import 'features/event_details/domain/repositories/event_score_repository.dart'
    as _i92;
import 'features/event_details/domain/usecases/event_details_usecase.dart'
    as _i91;
import 'features/event_details/domain/usecases/event_score_usecase.dart'
    as _i94;
import 'features/event_details/presentation/cubits/event_details_cubit.dart'
    as _i108;
import 'features/event_details/presentation/cubits/event_score_cubit.dart'
    as _i109;
import 'features/fighter/data/repositories/fighter_impl.dart' as _i99;
import 'features/fighter/data/sources/fighter_network.dart' as _i72;
import 'features/fighter/data/sources/fighter_source.dart' as _i71;
import 'features/fighter/domain/repositories/fighter_repository.dart' as _i98;
import 'features/fighter/domain/usecases/fighter_usecase.dart' as _i100;
import 'features/fighter/presentation/cubits/cached/cached_fighter_cubit.dart'
    as _i10;
import 'features/fighter/presentation/cubits/fighter_cubit.dart' as _i111;
import 'features/fighter/presentation/cubits/fights_cubit.dart' as _i101;
import 'features/home/data/repositories/app_versions_impl.dart' as _i83;
import 'features/home/data/repositories/banners_impl.dart' as _i86;
import 'features/home/data/repositories/events_impl.dart' as _i96;
import 'features/home/data/sources/app_versions_network.dart' as _i59;
import 'features/home/data/sources/app_versions_source.dart' as _i58;
import 'features/home/data/sources/banners_network.dart' as _i61;
import 'features/home/data/sources/banners_source.dart' as _i60;
import 'features/home/data/sources/events_network.dart' as _i70;
import 'features/home/data/sources/events_source.dart' as _i69;
import 'features/home/domain/repositories/app_versions_repository.dart' as _i82;
import 'features/home/domain/repositories/banners_repository.dart' as _i85;
import 'features/home/domain/repositories/events_repository.dart' as _i95;
import 'features/home/domain/usecases/app_versions_usecase.dart' as _i84;
import 'features/home/domain/usecases/banners_usecase.dart' as _i87;
import 'features/home/domain/usecases/events_usecase.dart' as _i97;
import 'features/home/presentation/cubits/app_versions/app_versions_cubit.dart'
    as _i106;
import 'features/home/presentation/cubits/banners_cubit.dart' as _i107;
import 'features/home/presentation/cubits/events/events_cubit.dart' as _i110;
import 'features/main/data/repositories/main_impl.dart' as _i47;
import 'features/main/data/sources/main_network.dart' as _i26;
import 'features/main/data/sources/main_source.dart' as _i25;
import 'features/main/domain/repositories/main_repository.dart' as _i46;
import 'features/main/domain/usecases/main_usecase.dart' as _i48;
import 'features/main/presentation/cubits/main_cubit.dart' as _i24;
import 'features/profile/data/repositories/profile_impl.dart' as _i50;
import 'features/profile/data/sources/profile_network.dart' as _i32;
import 'features/profile/data/sources/profile_source.dart' as _i31;
import 'features/profile/domain/repositories/profile_repository.dart' as _i49;
import 'features/profile/domain/usecases/profile_usecase.dart' as _i51;
import 'features/profile/presentation/cubits/profile_cubit.dart' as _i30;
import 'features/search/data/repositories/search_impl.dart' as _i74;
import 'features/search/data/sources/search_network.dart' as _i53;
import 'features/search/data/sources/search_source.dart' as _i52;
import 'features/search/domain/repositories/search_repository.dart' as _i73;
import 'features/search/domain/usecases/search_usecase.dart' as _i75;
import 'features/search/presentation/cubits/search_cubit.dart' as _i102;
import 'features/tournament_details/data/repositories/tournament_details_impl.dart'
    as _i77;
import 'features/tournament_details/data/sources/tournament_details_network.dart'
    as _i55;
import 'features/tournament_details/data/sources/tournament_details_source.dart'
    as _i54;
import 'features/tournament_details/domain/repositories/tournament_details_repository.dart'
    as _i76;
import 'features/tournament_details/domain/usecases/tournament_details_usecase.dart'
    as _i78;
import 'features/tournament_details/presentation/cubits/tournament_details_cubit.dart'
    as _i104;
import 'features/tournaments/data/repositories/tournaments_impl.dart' as _i80;
import 'features/tournaments/data/sources/tournaments_network.dart' as _i57;
import 'features/tournaments/data/sources/tournaments_source.dart' as _i56;
import 'features/tournaments/domain/repositories/tournaments_repository.dart'
    as _i79;
import 'features/tournaments/domain/usecases/tournaments_usecase.dart' as _i81;
import 'features/tournaments/presentation/cubits/tournaments_cubit.dart'
    as _i105;
import 'providers/app_update/app_update.dart' as _i5;
import 'providers/app_update/ota_update.dart' as _i6;
import 'providers/cache_manager/cache_manager.dart' as _i7;
import 'providers/device_info/device_info_plus.dart' as _i14;
import 'providers/device_info/device_info_provider.dart' as _i13;
import 'providers/emoji/emoji_impl.dart' as _i16;
import 'providers/emoji/emoji_provider.dart' as _i15;
import 'providers/event_notifications/event_notifications_provider.dart'
    as _i44;
import 'providers/jwt/comments_token.dart' as _i34;
import 'providers/jwt/token_provider.dart' as _i33;
import 'providers/local_notifications/local_notifications.dart' as _i18;
import 'providers/local_notifications/local_notifications_impl.dart' as _i19;
import 'providers/logger/logger_provider.dart' as _i20;
import 'providers/logger/my_logger.dart' as _i21;
import 'providers/logo/logo_impl.dart' as _i23;
import 'providers/logo/logo_provider.dart' as _i22;
import 'providers/package_info/package_info.dart' as _i28;
import 'providers/package_info/package_info_plus.dart' as _i29;
import 'providers/translit/translit_impl.dart' as _i36;
import 'providers/translit/translit_provider.dart' as _i35;
import 'providers/websocket/socket_io.dart' as _i40;
import 'providers/websocket/websocket_provider.dart' as _i39;
import 'router/app_router.dart' as _i4;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
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
  gh.lazySingleton<_i27.ModeCubit>(() => _i27.ModeCubit());
  gh.lazySingleton<_i28.PackageInfo>(() => _i29.PackageInfoPlusImpl());
  gh.factory<_i30.ProfileCubit>(() => _i30.ProfileCubit());
  gh.lazySingleton<_i31.ProfileSource>(() => _i32.ProfileNetworkSource());
  gh.lazySingleton<_i33.TokenProvider>(
    () => _i34.CommentsToken(),
    instanceName: 'CommentsTokenImpl',
  );
  gh.lazySingleton<_i35.TranslitProvider>(() => _i36.TranslitImpl());
  gh.lazySingleton<_i37.UrlsCubit>(() => _i37.UrlsCubit());
  gh.lazySingleton<_i38.UserCubit>(() => _i38.UserCubit());
  gh.factory<_i39.WebSocketProvider>(
    () => _i40.SocketIo(gh<_i20.LoggerProvider>()),
    instanceName: 'SocketIoImpl',
  );
  gh.lazySingleton<_i41.CommentSectionSource>(
      () => _i42.CommentSectionWebsocketSource(
            gh<_i39.WebSocketProvider>(instanceName: 'SocketIoImpl'),
            gh<_i37.UrlsCubit>(),
          ));
  gh.lazySingleton<_i43.CustomLogInterceptor>(
      () => _i43.CustomLogInterceptor(gh<_i20.LoggerProvider>()));
  gh.lazySingleton<_i44.EventNotificationsProvider>(
      () => _i44.EventNotificationsProvider(
            gh<_i18.LocalNotifications>(),
            gh<_i4.AppRouter>(),
          ));
  gh.factory<_i45.MainApi>(() => _i45.MainApi(
        gh<_i37.UrlsCubit>(),
        gh<_i43.CustomLogInterceptor>(),
      ));
  gh.lazySingleton<_i46.MainRepository>(
      () => _i47.MainRepositoryImpl(gh<_i25.MainSource>()));
  gh.lazySingleton<_i48.MainUsecase>(
      () => _i48.MainUsecase(gh<_i46.MainRepository>()));
  gh.lazySingleton<_i49.ProfileRepository>(
      () => _i50.ProfileRepositoryImpl(gh<_i31.ProfileSource>()));
  gh.lazySingleton<_i51.ProfileUsecase>(
      () => _i51.ProfileUsecase(gh<_i49.ProfileRepository>()));
  gh.lazySingleton<_i52.SearchSource>(
      () => _i53.SearchNetworkSource(gh<_i45.MainApi>()));
  gh.lazySingleton<_i54.TournamentDetailsSource>(
      () => _i55.TournamentDetailsNetworkSource(gh<_i45.MainApi>()));
  gh.lazySingleton<_i56.TournamentsSource>(
      () => _i57.TournamentsNetworkSource(gh<_i45.MainApi>()));
  gh.lazySingleton<_i58.AppVersionsSource>(
      () => _i59.AppVersionsNetwork(gh<_i45.MainApi>()));
  gh.lazySingleton<_i60.BannersSource>(
      () => _i61.BannersNetworkSource(gh<_i45.MainApi>()));
  gh.lazySingleton<_i62.CommentSectionRepository>(
      () => _i63.CommentSectionRepositoryImpl(gh<_i41.CommentSectionSource>()));
  gh.lazySingleton<_i64.CommentSectionUsecase>(
      () => _i64.CommentSectionUsecase(gh<_i62.CommentSectionRepository>()));
  gh.lazySingleton<_i65.EventDetailsSource>(
      () => _i66.EventDetailsNetworkSource(gh<_i45.MainApi>()));
  gh.lazySingleton<_i67.EventScoreSource>(() => _i68.EventScoreNetwork(
        gh<_i45.MainApi>(),
        gh<_i20.LoggerProvider>(),
      ));
  gh.lazySingleton<_i69.EventsSource>(
      () => _i70.EventsNetwork(gh<_i45.MainApi>()));
  gh.lazySingleton<_i71.FighterSource>(() => _i72.FighterUFCSource(
        gh<_i45.MainApi>(),
        gh<_i20.LoggerProvider>(),
      ));
  gh.lazySingleton<_i73.SearchRepository>(
      () => _i74.SearchRepositoryImpl(gh<_i52.SearchSource>()));
  gh.lazySingleton<_i75.SearchUsecase>(
      () => _i75.SearchUsecase(gh<_i73.SearchRepository>()));
  gh.lazySingleton<_i76.TournamentDetailsRepository>(() =>
      _i77.TournamentDetailsRepositoryImpl(gh<_i54.TournamentDetailsSource>()));
  gh.lazySingleton<_i78.TournamentDetailsUsecase>(() =>
      _i78.TournamentDetailsUsecase(gh<_i76.TournamentDetailsRepository>()));
  gh.lazySingleton<_i79.TournamentsRepository>(
      () => _i80.TournamentsRepositoryImpl(gh<_i56.TournamentsSource>()));
  gh.lazySingleton<_i81.TournamentsUsecase>(
      () => _i81.TournamentsUsecase(gh<_i79.TournamentsRepository>()));
  gh.lazySingleton<_i82.AppVersionsRepository>(
      () => _i83.AppVersionsRepositoryImpl(gh<_i58.AppVersionsSource>()));
  gh.lazySingleton<_i84.AppVersionsUseCase>(
      () => _i84.AppVersionsUseCase(gh<_i82.AppVersionsRepository>()));
  gh.lazySingleton<_i85.BannersRepository>(
      () => _i86.BannersRepositoryImpl(gh<_i60.BannersSource>()));
  gh.lazySingleton<_i87.BannersUseCase>(
      () => _i87.BannersUseCase(gh<_i85.BannersRepository>()));
  gh.lazySingleton<_i88.CommentSectionCubit>(() => _i88.CommentSectionCubit(
        gh<_i64.CommentSectionUsecase>(),
        gh<_i33.TokenProvider>(instanceName: 'CommentsTokenImpl'),
      ));
  gh.lazySingleton<_i89.EventDetailsRepository>(
      () => _i90.EventDetailsRepositoryImpl(gh<_i65.EventDetailsSource>()));
  gh.lazySingleton<_i91.EventDetailsUsecase>(
      () => _i91.EventDetailsUsecase(gh<_i89.EventDetailsRepository>()));
  gh.lazySingleton<_i92.EventScoreRepository>(
      () => _i93.EventScoreRepositoryImpl(gh<_i67.EventScoreSource>()));
  gh.lazySingleton<_i94.EventScoreUsecase>(
      () => _i94.EventScoreUsecase(gh<_i92.EventScoreRepository>()));
  gh.lazySingleton<_i95.EventsRepository>(
      () => _i96.EventsRepositoryImpl(gh<_i69.EventsSource>()));
  gh.lazySingleton<_i97.EventsUseCase>(
      () => _i97.EventsUseCase(gh<_i95.EventsRepository>()));
  gh.lazySingleton<_i98.FighterRepository>(
      () => _i99.FighterRepositoryImpl(gh<_i71.FighterSource>()));
  gh.lazySingleton<_i100.FighterUsecase>(
      () => _i100.FighterUsecase(gh<_i98.FighterRepository>()));
  gh.factory<_i101.FightsCubit>(
      () => _i101.FightsCubit(gh<_i100.FighterUsecase>()));
  gh.factory<_i102.SearchCubit>(
      () => _i102.SearchCubit(gh<_i75.SearchUsecase>()));
  gh.lazySingleton<_i103.SendCommentCubit>(() => _i103.SendCommentCubit(
        gh<_i33.TokenProvider>(instanceName: 'CommentsTokenImpl'),
        gh<_i38.UserCubit>(),
        gh<_i64.CommentSectionUsecase>(),
        gh<_i13.DeviceInfoProvider>(),
        gh<_i88.CommentSectionCubit>(),
      ));
  gh.factory<_i104.TournamentDetailsCubit>(
      () => _i104.TournamentDetailsCubit(gh<_i78.TournamentDetailsUsecase>()));
  gh.lazySingleton<_i105.TournamentsCubit>(() => _i105.TournamentsCubit(
        gh<_i12.CachedTournamentsCubit>(),
        gh<_i81.TournamentsUsecase>(),
      ));
  gh.lazySingleton<_i106.AppVersionsCubit>(() => _i106.AppVersionsCubit(
        gh<_i84.AppVersionsUseCase>(),
        gh<_i28.PackageInfo>(),
      ));
  gh.lazySingleton<_i107.BannersCubit>(() => _i107.BannersCubit(
        gh<_i87.BannersUseCase>(),
        gh<_i8.CachedBannersCubit>(),
      ));
  gh.factory<_i108.EventDetailsCubit>(
      () => _i108.EventDetailsCubit(gh<_i91.EventDetailsUsecase>()));
  gh.lazySingleton<_i109.EventScoreCubit>(() => _i109.EventScoreCubit(
        gh<_i94.EventScoreUsecase>(),
        gh<_i9.CachedEventScoresCubit>(),
      ));
  gh.lazySingleton<_i110.EventsCubit>(
      () => _i110.EventsCubit(gh<_i97.EventsUseCase>()));
  gh.factory<_i111.FighterCubit>(() => _i111.FighterCubit(
        gh<_i100.FighterUsecase>(),
        gh<_i101.FightsCubit>(),
      ));
  return getIt;
}
