// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/api/interceptors/log_interceptor.dart' as _i40;
import 'core/api/main_api.dart' as _i42;
import 'core/components/loader/alert_loader/alert_loader.dart' as _i3;
import 'core/cubits/cached/banners_cubit/banners_cubit.dart' as _i8;
import 'core/cubits/cached/event_list_cubit/event_list_cubit.dart' as _i15;
import 'core/cubits/cached/lang/lang_cubit.dart' as _i9;
import 'core/cubits/cached/tournaments_cubit/tournaments_cubit.dart' as _i10;
import 'core/cubits/cached/urls_cubit/urls_cubit.dart' as _i34;
import 'core/cubits/cached/user_cubit/user_cubit.dart' as _i35;
import 'features/comment_section/data/repositories/comment_section_impl.dart'
    as _i60;
import 'features/comment_section/data/sources/comment_section_source.dart'
    as _i38;
import 'features/comment_section/data/sources/comment_section_websocket.dart'
    as _i39;
import 'features/comment_section/domain/repositories/comment_section_repository.dart'
    as _i59;
import 'features/comment_section/domain/usecases/comment_section_usecase.dart'
    as _i61;
import 'features/comment_section/presentation/cubits/comment_section_cubit.dart'
    as _i81;
import 'features/comment_section/presentation/cubits/send_comment/send_comment_cubit.dart'
    as _i89;
import 'features/event_details/data/repositories/event_details_impl.dart'
    as _i83;
import 'features/event_details/data/sources/event_details_network.dart' as _i63;
import 'features/event_details/data/sources/event_details_source.dart' as _i62;
import 'features/event_details/domain/repositories/event_details_repository.dart'
    as _i82;
import 'features/event_details/domain/usecases/event_details_usecase.dart'
    as _i84;
import 'features/event_details/presentation/cubits/event_details_cubit.dart'
    as _i94;
import 'features/home/data/repositories/app_versions_impl.dart' as _i76;
import 'features/home/data/repositories/banners_impl.dart' as _i79;
import 'features/home/data/repositories/events_impl.dart' as _i86;
import 'features/home/data/sources/app_versions_network.dart' as _i56;
import 'features/home/data/sources/app_versions_source.dart' as _i55;
import 'features/home/data/sources/banners_network.dart' as _i58;
import 'features/home/data/sources/banners_source.dart' as _i57;
import 'features/home/data/sources/events_network.dart' as _i65;
import 'features/home/data/sources/events_source.dart' as _i64;
import 'features/home/domain/repositories/app_versions_repository.dart' as _i75;
import 'features/home/domain/repositories/banners_repository.dart' as _i78;
import 'features/home/domain/repositories/events_repository.dart' as _i85;
import 'features/home/domain/usecases/app_versions_usecase.dart' as _i77;
import 'features/home/domain/usecases/banners_usecase.dart' as _i80;
import 'features/home/domain/usecases/events_usecase.dart' as _i87;
import 'features/home/presentation/cubits/app_versions/app_versions_cubit.dart'
    as _i92;
import 'features/home/presentation/cubits/banners_cubit.dart' as _i93;
import 'features/home/presentation/cubits/events/events_cubit.dart' as _i95;
import 'features/main/data/repositories/main_impl.dart' as _i44;
import 'features/main/data/sources/main_network.dart' as _i24;
import 'features/main/data/sources/main_source.dart' as _i23;
import 'features/main/domain/repositories/main_repository.dart' as _i43;
import 'features/main/domain/usecases/main_usecase.dart' as _i45;
import 'features/main/presentation/cubits/main_cubit.dart' as _i22;
import 'features/profile/data/repositories/profile_impl.dart' as _i47;
import 'features/profile/data/sources/profile_network.dart' as _i29;
import 'features/profile/data/sources/profile_source.dart' as _i28;
import 'features/profile/domain/repositories/profile_repository.dart' as _i46;
import 'features/profile/domain/usecases/profile_usecase.dart' as _i48;
import 'features/profile/presentation/cubits/profile_cubit.dart' as _i27;
import 'features/search/data/repositories/search_impl.dart' as _i67;
import 'features/search/data/sources/search_network.dart' as _i50;
import 'features/search/data/sources/search_source.dart' as _i49;
import 'features/search/domain/repositories/search_repository.dart' as _i66;
import 'features/search/domain/usecases/search_usecase.dart' as _i68;
import 'features/search/presentation/cubits/search_cubit.dart' as _i88;
import 'features/tournament_details/data/repositories/tournament_details_impl.dart'
    as _i70;
import 'features/tournament_details/data/sources/tournament_details_network.dart'
    as _i52;
import 'features/tournament_details/data/sources/tournament_details_source.dart'
    as _i51;
import 'features/tournament_details/domain/repositories/tournament_details_repository.dart'
    as _i69;
import 'features/tournament_details/domain/usecases/tournament_details_usecase.dart'
    as _i71;
import 'features/tournament_details/presentation/cubits/tournament_details_cubit.dart'
    as _i90;
import 'features/tournaments/data/repositories/tournaments_impl.dart' as _i73;
import 'features/tournaments/data/sources/tournaments_network.dart' as _i54;
import 'features/tournaments/data/sources/tournaments_source.dart' as _i53;
import 'features/tournaments/domain/repositories/tournaments_repository.dart'
    as _i72;
import 'features/tournaments/domain/usecases/tournaments_usecase.dart' as _i74;
import 'features/tournaments/presentation/cubits/tournaments_cubit.dart'
    as _i91;
import 'providers/app_update/app_update.dart' as _i5;
import 'providers/app_update/ota_update.dart' as _i6;
import 'providers/cache_manager/cache_manager.dart' as _i7;
import 'providers/device_info/device_info_plus.dart' as _i12;
import 'providers/device_info/device_info_provider.dart' as _i11;
import 'providers/emoji/emoji_impl.dart' as _i14;
import 'providers/emoji/emoji_provider.dart' as _i13;
import 'providers/event_notifications/event_notifications_provider.dart'
    as _i41;
import 'providers/jwt/comments_token.dart' as _i31;
import 'providers/jwt/token_provider.dart' as _i30;
import 'providers/local_notifications/local_notifications.dart' as _i16;
import 'providers/local_notifications/local_notifications_impl.dart' as _i17;
import 'providers/logger/logger_provider.dart' as _i18;
import 'providers/logger/my_logger.dart' as _i19;
import 'providers/logo/logo_impl.dart' as _i21;
import 'providers/logo/logo_provider.dart' as _i20;
import 'providers/package_info/package_info.dart' as _i25;
import 'providers/package_info/package_info_plus.dart' as _i26;
import 'providers/translit/translit_impl.dart' as _i33;
import 'providers/translit/translit_provider.dart' as _i32;
import 'providers/websocket/socket_io.dart' as _i37;
import 'providers/websocket/websocket_provider.dart' as _i36;
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
  gh.lazySingleton<_i13.EmojiProvider>(() => _i14.EmojiImpl());
  gh.factoryParam<_i15.EventListCubit, String, dynamic>((
    key,
    _,
  ) =>
      _i15.EventListCubit(key));
  gh.lazySingleton<_i16.LocalNotifications>(
      () => _i17.LocalNotificationsImpl());
  gh.singleton<_i18.LoggerProvider>(_i19.MyLogger());
  gh.lazySingleton<_i20.LogoProvider>(() => _i21.LogoProviderImpl());
  gh.factory<_i22.MainCubit>(() => _i22.MainCubit());
  gh.lazySingleton<_i23.MainSource>(() => _i24.MainNetworkSource());
  gh.lazySingleton<_i25.PackageInfo>(() => _i26.PackageInfoPlusImpl());
  gh.factory<_i27.ProfileCubit>(() => _i27.ProfileCubit());
  gh.lazySingleton<_i28.ProfileSource>(() => _i29.ProfileNetworkSource());
  gh.lazySingleton<_i30.TokenProvider>(
    () => _i31.CommentsToken(),
    instanceName: 'CommentsTokenImpl',
  );
  gh.lazySingleton<_i32.TranslitProvider>(() => _i33.TranslitImpl());
  gh.lazySingleton<_i34.UrlsCubit>(() => _i34.UrlsCubit());
  gh.lazySingleton<_i35.UserCubit>(() => _i35.UserCubit());
  gh.factory<_i36.WebSocketProvider>(
    () => _i37.SocketIo(get<_i18.LoggerProvider>()),
    instanceName: 'SocketIoImpl',
  );
  gh.lazySingleton<_i38.CommentSectionSource>(
      () => _i39.CommentSectionWebsocketSource(
            get<_i36.WebSocketProvider>(instanceName: 'SocketIoImpl'),
            get<_i34.UrlsCubit>(),
          ));
  gh.lazySingleton<_i40.CustomLogInterceptor>(
      () => _i40.CustomLogInterceptor(get<_i18.LoggerProvider>()));
  gh.lazySingleton<_i41.EventNotificationsProvider>(
      () => _i41.EventNotificationsProvider(
            get<_i16.LocalNotifications>(),
            get<_i4.AppRouter>(),
          ));
  gh.factory<_i42.MainApi>(() => _i42.MainApi(
        get<_i34.UrlsCubit>(),
        get<_i40.CustomLogInterceptor>(),
      ));
  gh.lazySingleton<_i43.MainRepository>(
      () => _i44.MainRepositoryImpl(get<_i23.MainSource>()));
  gh.lazySingleton<_i45.MainUsecase>(
      () => _i45.MainUsecase(get<_i43.MainRepository>()));
  gh.lazySingleton<_i46.ProfileRepository>(
      () => _i47.ProfileRepositoryImpl(get<_i28.ProfileSource>()));
  gh.lazySingleton<_i48.ProfileUsecase>(
      () => _i48.ProfileUsecase(get<_i46.ProfileRepository>()));
  gh.lazySingleton<_i49.SearchSource>(
      () => _i50.SearchNetworkSource(get<_i42.MainApi>()));
  gh.lazySingleton<_i51.TournamentDetailsSource>(
      () => _i52.TournamentDetailsNetworkSource(get<_i42.MainApi>()));
  gh.lazySingleton<_i53.TournamentsSource>(
      () => _i54.TournamentsNetworkSource(get<_i42.MainApi>()));
  gh.lazySingleton<_i55.AppVersionsSource>(
      () => _i56.AppVersionsNetwork(get<_i42.MainApi>()));
  gh.lazySingleton<_i57.BannersSource>(
      () => _i58.BannersNetworkSource(get<_i42.MainApi>()));
  gh.lazySingleton<_i59.CommentSectionRepository>(() =>
      _i60.CommentSectionRepositoryImpl(get<_i38.CommentSectionSource>()));
  gh.lazySingleton<_i61.CommentSectionUsecase>(
      () => _i61.CommentSectionUsecase(get<_i59.CommentSectionRepository>()));
  gh.lazySingleton<_i62.EventDetailsSource>(
      () => _i63.EventDetailsNetworkSource(get<_i42.MainApi>()));
  gh.lazySingleton<_i64.EventsSource>(
      () => _i65.EventsNetwork(get<_i42.MainApi>()));
  gh.lazySingleton<_i66.SearchRepository>(
      () => _i67.SearchRepositoryImpl(get<_i49.SearchSource>()));
  gh.lazySingleton<_i68.SearchUsecase>(
      () => _i68.SearchUsecase(get<_i66.SearchRepository>()));
  gh.lazySingleton<_i69.TournamentDetailsRepository>(() =>
      _i70.TournamentDetailsRepositoryImpl(
          get<_i51.TournamentDetailsSource>()));
  gh.lazySingleton<_i71.TournamentDetailsUsecase>(() =>
      _i71.TournamentDetailsUsecase(get<_i69.TournamentDetailsRepository>()));
  gh.lazySingleton<_i72.TournamentsRepository>(
      () => _i73.TournamentsRepositoryImpl(get<_i53.TournamentsSource>()));
  gh.lazySingleton<_i74.TournamentsUsecase>(
      () => _i74.TournamentsUsecase(get<_i72.TournamentsRepository>()));
  gh.lazySingleton<_i75.AppVersionsRepository>(
      () => _i76.AppVersionsRepositoryImpl(get<_i55.AppVersionsSource>()));
  gh.lazySingleton<_i77.AppVersionsUseCase>(
      () => _i77.AppVersionsUseCase(get<_i75.AppVersionsRepository>()));
  gh.lazySingleton<_i78.BannersRepository>(
      () => _i79.BannersRepositoryImpl(get<_i57.BannersSource>()));
  gh.lazySingleton<_i80.BannersUseCase>(
      () => _i80.BannersUseCase(get<_i78.BannersRepository>()));
  gh.lazySingleton<_i81.CommentSectionCubit>(() => _i81.CommentSectionCubit(
        get<_i61.CommentSectionUsecase>(),
        get<_i30.TokenProvider>(instanceName: 'CommentsTokenImpl'),
      ));
  gh.lazySingleton<_i82.EventDetailsRepository>(
      () => _i83.EventDetailsRepositoryImpl(get<_i62.EventDetailsSource>()));
  gh.lazySingleton<_i84.EventDetailsUsecase>(
      () => _i84.EventDetailsUsecase(get<_i82.EventDetailsRepository>()));
  gh.lazySingleton<_i85.EventsRepository>(
      () => _i86.EventsRepositoryImpl(get<_i64.EventsSource>()));
  gh.lazySingleton<_i87.EventsUseCase>(
      () => _i87.EventsUseCase(get<_i85.EventsRepository>()));
  gh.factory<_i88.SearchCubit>(
      () => _i88.SearchCubit(get<_i68.SearchUsecase>()));
  gh.lazySingleton<_i89.SendCommentCubit>(() => _i89.SendCommentCubit(
        get<_i30.TokenProvider>(instanceName: 'CommentsTokenImpl'),
        get<_i35.UserCubit>(),
        get<_i61.CommentSectionUsecase>(),
        get<_i11.DeviceInfoProvider>(),
        get<_i81.CommentSectionCubit>(),
      ));
  gh.factory<_i90.TournamentDetailsCubit>(
      () => _i90.TournamentDetailsCubit(get<_i71.TournamentDetailsUsecase>()));
  gh.lazySingleton<_i91.TournamentsCubit>(() => _i91.TournamentsCubit(
        get<_i10.CachedTournamentsCubit>(),
        get<_i74.TournamentsUsecase>(),
      ));
  gh.lazySingleton<_i92.AppVersionsCubit>(() => _i92.AppVersionsCubit(
        get<_i77.AppVersionsUseCase>(),
        get<_i25.PackageInfo>(),
      ));
  gh.lazySingleton<_i93.BannersCubit>(() => _i93.BannersCubit(
        get<_i80.BannersUseCase>(),
        get<_i8.CachedBannersCubit>(),
      ));
  gh.factory<_i94.EventDetailsCubit>(
      () => _i94.EventDetailsCubit(get<_i84.EventDetailsUsecase>()));
  gh.lazySingleton<_i95.EventsCubit>(
      () => _i95.EventsCubit(get<_i87.EventsUseCase>()));
  return get;
}
