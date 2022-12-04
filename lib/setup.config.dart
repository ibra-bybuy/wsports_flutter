// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/api/interceptors/log_interceptor.dart' as _i25;
import 'core/api/main_api.dart' as _i29;
import 'core/cubits/cached/banners_cubit/banners_cubit.dart' as _i5;
import 'core/cubits/cached/event_list_cubit/event_list_cubit.dart' as _i11;
import 'core/cubits/cached/urls_cubit/urls_cubit.dart' as _i19;
import 'core/cubits/cached/user_cubit/user_cubit.dart' as _i20;
import 'features/comment_section/data/repositories/comment_section_impl.dart'
    as _i38;
import 'features/comment_section/data/sources/comment_section_source.dart'
    as _i23;
import 'features/comment_section/data/sources/comment_section_websocket.dart'
    as _i24;
import 'features/comment_section/domain/repositories/comment_section_repository.dart'
    as _i37;
import 'features/comment_section/domain/usecases/comment_section_usecase.dart'
    as _i39;
import 'features/comment_section/presentation/cubits/comment_section_cubit.dart'
    as _i48;
import 'features/comment_section/presentation/cubits/send_comment/send_comment_cubit.dart'
    as _i53;
import 'features/event_details/data/repositories/event_details_impl.dart'
    as _i27;
import 'features/event_details/data/sources/event_details_network.dart' as _i10;
import 'features/event_details/data/sources/event_details_source.dart' as _i9;
import 'features/event_details/domain/repositories/event_details_repository.dart'
    as _i26;
import 'features/event_details/domain/usecases/event_details_usecase.dart'
    as _i28;
import 'features/event_details/presentation/cubits/event_details_cubit.dart'
    as _i8;
import 'features/home/data/repositories/banners_impl.dart' as _i46;
import 'features/home/data/repositories/events_impl.dart' as _i50;
import 'features/home/data/sources/banners_network.dart' as _i36;
import 'features/home/data/sources/banners_source.dart' as _i35;
import 'features/home/data/sources/events_network.dart' as _i41;
import 'features/home/data/sources/events_source.dart' as _i40;
import 'features/home/domain/repositories/banners_repository.dart' as _i45;
import 'features/home/domain/repositories/events_repository.dart' as _i49;
import 'features/home/domain/usecases/banners_usecase.dart' as _i47;
import 'features/home/domain/usecases/events_usecase.dart' as _i51;
import 'features/home/presentation/cubits/banners_cubit.dart' as _i54;
import 'features/home/presentation/cubits/events/events_cubit.dart' as _i55;
import 'features/search/data/repositories/search_impl.dart' as _i43;
import 'features/search/data/sources/search_network.dart' as _i31;
import 'features/search/data/sources/search_source.dart' as _i30;
import 'features/search/domain/repositories/search_repository.dart' as _i42;
import 'features/search/domain/usecases/search_usecase.dart' as _i44;
import 'features/search/presentation/cubits/search_cubit.dart' as _i52;
import 'features/settings/data/repositories/settings_impl.dart' as _i33;
import 'features/settings/data/sources/settings_network.dart' as _i16;
import 'features/settings/data/sources/settings_source.dart' as _i15;
import 'features/settings/domain/repositories/settings_repository.dart' as _i32;
import 'features/settings/domain/usecases/settings_usecase.dart' as _i34;
import 'features/settings/presentation/cubits/settings_cubit.dart' as _i14;
import 'providers/cache_manager/cache_manager.dart' as _i4;
import 'providers/device_info/device_info_plus.dart' as _i7;
import 'providers/device_info/device_info_provider.dart' as _i6;
import 'providers/jwt/comments_token.dart' as _i18;
import 'providers/jwt/token_provider.dart' as _i17;
import 'providers/logger/logger_provider.dart' as _i12;
import 'providers/logger/my_logger.dart' as _i13;
import 'providers/websocket/socket_io.dart' as _i22;
import 'providers/websocket/websocket_provider.dart' as _i21;
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
  gh.lazySingleton<_i4.CacheManager>(() => _i4.CacheManager());
  gh.lazySingleton<_i5.CachedBannersCubit>(() => _i5.CachedBannersCubit());
  gh.lazySingleton<_i6.DeviceInfoProvider>(() => _i7.DeviceInfoPlus());
  gh.factory<_i8.EventDetailsCubit>(() => _i8.EventDetailsCubit());
  gh.lazySingleton<_i9.EventDetailsSource>(
      () => _i10.EventDetailsNetworkSource());
  gh.factoryParam<_i11.EventListCubit, String, dynamic>((
    key,
    _,
  ) =>
      _i11.EventListCubit(key));
  gh.singleton<_i12.LoggerProvider>(_i13.MyLogger());
  gh.factory<_i14.SettingsCubit>(() => _i14.SettingsCubit());
  gh.lazySingleton<_i15.SettingsSource>(() => _i16.SettingsNetworkSource());
  gh.lazySingleton<_i17.TokenProvider>(
    () => _i18.CommentsToken(),
    instanceName: 'CommentsTokenImpl',
  );
  gh.lazySingleton<_i19.UrlsCubit>(() => _i19.UrlsCubit());
  gh.lazySingleton<_i20.UserCubit>(() => _i20.UserCubit());
  gh.factory<_i21.WebSocketProvider>(
    () => _i22.SocketIo(get<_i12.LoggerProvider>()),
    instanceName: 'SocketIoImpl',
  );
  gh.lazySingleton<_i23.CommentSectionSource>(
      () => _i24.CommentSectionWebsocketSource(
            get<_i21.WebSocketProvider>(instanceName: 'SocketIoImpl'),
            get<_i19.UrlsCubit>(),
          ));
  gh.lazySingleton<_i25.CustomLogInterceptor>(
      () => _i25.CustomLogInterceptor(get<_i12.LoggerProvider>()));
  gh.lazySingleton<_i26.EventDetailsRepository>(
      () => _i27.EventDetailsRepositoryImpl(get<_i9.EventDetailsSource>()));
  gh.lazySingleton<_i28.EventDetailsUsecase>(
      () => _i28.EventDetailsUsecase(get<_i26.EventDetailsRepository>()));
  gh.factory<_i29.MainApi>(() => _i29.MainApi(
        get<_i19.UrlsCubit>(),
        get<_i25.CustomLogInterceptor>(),
      ));
  gh.lazySingleton<_i30.SearchSource>(
      () => _i31.SearchNetworkSource(get<_i29.MainApi>()));
  gh.lazySingleton<_i32.SettingsRepository>(
      () => _i33.SettingsRepositoryImpl(get<_i15.SettingsSource>()));
  gh.lazySingleton<_i34.SettingsUsecase>(
      () => _i34.SettingsUsecase(get<_i32.SettingsRepository>()));
  gh.lazySingleton<_i35.BannersSource>(
      () => _i36.BannersNetworkSource(get<_i29.MainApi>()));
  gh.lazySingleton<_i37.CommentSectionRepository>(() =>
      _i38.CommentSectionRepositoryImpl(get<_i23.CommentSectionSource>()));
  gh.lazySingleton<_i39.CommentSectionUsecase>(
      () => _i39.CommentSectionUsecase(get<_i37.CommentSectionRepository>()));
  gh.lazySingleton<_i40.EventsSource>(
      () => _i41.EventsNetwork(get<_i29.MainApi>()));
  gh.lazySingleton<_i42.SearchRepository>(
      () => _i43.SearchRepositoryImpl(get<_i30.SearchSource>()));
  gh.lazySingleton<_i44.SearchUsecase>(
      () => _i44.SearchUsecase(get<_i42.SearchRepository>()));
  gh.lazySingleton<_i45.BannersRepository>(
      () => _i46.BannersRepositoryImpl(get<_i35.BannersSource>()));
  gh.lazySingleton<_i47.BannersUseCase>(
      () => _i47.BannersUseCase(get<_i45.BannersRepository>()));
  gh.lazySingleton<_i48.CommentSectionCubit>(() => _i48.CommentSectionCubit(
        get<_i39.CommentSectionUsecase>(),
        get<_i17.TokenProvider>(instanceName: 'CommentsTokenImpl'),
      ));
  gh.lazySingleton<_i49.EventsRepository>(
      () => _i50.EventsRepositoryImpl(get<_i40.EventsSource>()));
  gh.lazySingleton<_i51.EventsUseCase>(
      () => _i51.EventsUseCase(get<_i49.EventsRepository>()));
  gh.factory<_i52.SearchCubit>(
      () => _i52.SearchCubit(get<_i44.SearchUsecase>()));
  gh.lazySingleton<_i53.SendCommentCubit>(() => _i53.SendCommentCubit(
        get<_i17.TokenProvider>(instanceName: 'CommentsTokenImpl'),
        get<_i20.UserCubit>(),
        get<_i39.CommentSectionUsecase>(),
        get<_i6.DeviceInfoProvider>(),
        get<_i48.CommentSectionCubit>(),
      ));
  gh.lazySingleton<_i54.BannersCubit>(() => _i54.BannersCubit(
        get<_i47.BannersUseCase>(),
        get<_i5.CachedBannersCubit>(),
      ));
  gh.lazySingleton<_i55.EventsCubit>(
      () => _i55.EventsCubit(get<_i51.EventsUseCase>()));
  return get;
}
