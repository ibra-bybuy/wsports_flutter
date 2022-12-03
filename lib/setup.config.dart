// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/api/interceptors/log_interceptor.dart' as _i30;
import 'core/api/main_api.dart' as _i34;
import 'core/cubits/cached/banners_cubit/banners_cubit.dart' as _i7;
import 'core/cubits/cached/event_list_cubit/event_list_cubit.dart' as _i13;
import 'core/cubits/cached/urls_cubit/urls_cubit.dart' as _i21;
import 'core/cubits/cached/user_cubit/user_cubit.dart' as _i22;
import 'features/comment_section/data/repositories/comment_section_impl.dart'
    as _i42;
import 'features/comment_section/data/sources/comment_section_source.dart'
    as _i28;
import 'features/comment_section/data/sources/comment_section_websocket.dart'
    as _i29;
import 'features/comment_section/domain/repositories/comment_section_repository.dart'
    as _i41;
import 'features/comment_section/domain/usecases/comment_section_usecase.dart'
    as _i43;
import 'features/comment_section/presentation/cubits/comment_section_cubit.dart'
    as _i49;
import 'features/comment_section/presentation/cubits/send_comment/send_comment_cubit.dart'
    as _i54;
import 'features/event_details/data/repositories/event_details_impl.dart'
    as _i32;
import 'features/event_details/data/sources/event_details_network.dart' as _i12;
import 'features/event_details/data/sources/event_details_source.dart' as _i11;
import 'features/event_details/domain/repositories/event_details_repository.dart'
    as _i31;
import 'features/event_details/domain/usecases/event_details_usecase.dart'
    as _i33;
import 'features/event_details/presentation/cubits/event_details_cubit.dart'
    as _i10;
import 'features/home/data/repositories/banners_impl.dart' as _i26;
import 'features/home/data/repositories/events_impl.dart' as _i51;
import 'features/home/data/sources/banners_network.dart' as _i5;
import 'features/home/data/sources/banners_source.dart' as _i4;
import 'features/home/data/sources/events_network.dart' as _i45;
import 'features/home/data/sources/events_source.dart' as _i44;
import 'features/home/domain/repositories/banners_repository.dart' as _i25;
import 'features/home/domain/repositories/events_repository.dart' as _i50;
import 'features/home/domain/usecases/banners_usecase.dart' as _i27;
import 'features/home/domain/usecases/events_usecase.dart' as _i52;
import 'features/home/presentation/cubits/banners_cubit.dart' as _i40;
import 'features/home/presentation/cubits/events/events_cubit.dart' as _i55;
import 'features/search/data/repositories/search_impl.dart' as _i47;
import 'features/search/data/sources/search_network.dart' as _i36;
import 'features/search/data/sources/search_source.dart' as _i35;
import 'features/search/domain/repositories/search_repository.dart' as _i46;
import 'features/search/domain/usecases/search_usecase.dart' as _i48;
import 'features/search/presentation/cubits/search_cubit.dart' as _i53;
import 'features/settings/data/repositories/settings_impl.dart' as _i38;
import 'features/settings/data/sources/settings_network.dart' as _i18;
import 'features/settings/data/sources/settings_source.dart' as _i17;
import 'features/settings/domain/repositories/settings_repository.dart' as _i37;
import 'features/settings/domain/usecases/settings_usecase.dart' as _i39;
import 'features/settings/presentation/cubits/settings_cubit.dart' as _i16;
import 'providers/cache_manager/cache_manager.dart' as _i6;
import 'providers/device_info/device_info_plus.dart' as _i9;
import 'providers/device_info/device_info_provider.dart' as _i8;
import 'providers/jwt/comments_token.dart' as _i20;
import 'providers/jwt/token_provider.dart' as _i19;
import 'providers/logger/logger_provider.dart' as _i14;
import 'providers/logger/my_logger.dart' as _i15;
import 'providers/websocket/socket_io.dart' as _i24;
import 'providers/websocket/websocket_provider.dart' as _i23;
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
  gh.lazySingleton<_i4.BannersSource>(() => _i5.BannersNetworkSource());
  gh.lazySingleton<_i6.CacheManager>(() => _i6.CacheManager());
  gh.lazySingleton<_i7.CachedBannersCubit>(() => _i7.CachedBannersCubit());
  gh.lazySingleton<_i8.DeviceInfoProvider>(() => _i9.DeviceInfoPlus());
  gh.factory<_i10.EventDetailsCubit>(() => _i10.EventDetailsCubit());
  gh.lazySingleton<_i11.EventDetailsSource>(
      () => _i12.EventDetailsNetworkSource());
  gh.factoryParam<_i13.EventListCubit, String, dynamic>((
    key,
    _,
  ) =>
      _i13.EventListCubit(key));
  gh.singleton<_i14.LoggerProvider>(_i15.MyLogger());
  gh.factory<_i16.SettingsCubit>(() => _i16.SettingsCubit());
  gh.lazySingleton<_i17.SettingsSource>(() => _i18.SettingsNetworkSource());
  gh.lazySingleton<_i19.TokenProvider>(
    () => _i20.CommentsToken(),
    instanceName: 'CommentsTokenImpl',
  );
  gh.lazySingleton<_i21.UrlsCubit>(() => _i21.UrlsCubit());
  gh.lazySingleton<_i22.UserCubit>(() => _i22.UserCubit());
  gh.factory<_i23.WebSocketProvider>(
    () => _i24.SocketIo(get<_i14.LoggerProvider>()),
    instanceName: 'SocketIoImpl',
  );
  gh.lazySingleton<_i25.BannersRepository>(
      () => _i26.BannersRepositoryImpl(get<_i4.BannersSource>()));
  gh.lazySingleton<_i27.BannersUseCase>(
      () => _i27.BannersUseCase(get<_i25.BannersRepository>()));
  gh.lazySingleton<_i28.CommentSectionSource>(
      () => _i29.CommentSectionWebsocketSource(
            get<_i23.WebSocketProvider>(instanceName: 'SocketIoImpl'),
            get<_i21.UrlsCubit>(),
          ));
  gh.lazySingleton<_i30.CustomLogInterceptor>(
      () => _i30.CustomLogInterceptor(get<_i14.LoggerProvider>()));
  gh.lazySingleton<_i31.EventDetailsRepository>(
      () => _i32.EventDetailsRepositoryImpl(get<_i11.EventDetailsSource>()));
  gh.lazySingleton<_i33.EventDetailsUsecase>(
      () => _i33.EventDetailsUsecase(get<_i31.EventDetailsRepository>()));
  gh.factory<_i34.MainApi>(() => _i34.MainApi(
        get<_i21.UrlsCubit>(),
        get<_i30.CustomLogInterceptor>(),
      ));
  gh.lazySingleton<_i35.SearchSource>(
      () => _i36.SearchNetworkSource(get<_i34.MainApi>()));
  gh.lazySingleton<_i37.SettingsRepository>(
      () => _i38.SettingsRepositoryImpl(get<_i17.SettingsSource>()));
  gh.lazySingleton<_i39.SettingsUsecase>(
      () => _i39.SettingsUsecase(get<_i37.SettingsRepository>()));
  gh.lazySingleton<_i40.BannersCubit>(() => _i40.BannersCubit(
        get<_i27.BannersUseCase>(),
        get<_i7.CachedBannersCubit>(),
      ));
  gh.lazySingleton<_i41.CommentSectionRepository>(() =>
      _i42.CommentSectionRepositoryImpl(get<_i28.CommentSectionSource>()));
  gh.lazySingleton<_i43.CommentSectionUsecase>(
      () => _i43.CommentSectionUsecase(get<_i41.CommentSectionRepository>()));
  gh.lazySingleton<_i44.EventsSource>(
      () => _i45.EventsNetwork(get<_i34.MainApi>()));
  gh.lazySingleton<_i46.SearchRepository>(
      () => _i47.SearchRepositoryImpl(get<_i35.SearchSource>()));
  gh.lazySingleton<_i48.SearchUsecase>(
      () => _i48.SearchUsecase(get<_i46.SearchRepository>()));
  gh.lazySingleton<_i49.CommentSectionCubit>(() => _i49.CommentSectionCubit(
        get<_i43.CommentSectionUsecase>(),
        get<_i19.TokenProvider>(instanceName: 'CommentsTokenImpl'),
      ));
  gh.lazySingleton<_i50.EventsRepository>(
      () => _i51.EventsRepositoryImpl(get<_i44.EventsSource>()));
  gh.lazySingleton<_i52.EventsUseCase>(
      () => _i52.EventsUseCase(get<_i50.EventsRepository>()));
  gh.factory<_i53.SearchCubit>(
      () => _i53.SearchCubit(get<_i48.SearchUsecase>()));
  gh.lazySingleton<_i54.SendCommentCubit>(() => _i54.SendCommentCubit(
        get<_i19.TokenProvider>(instanceName: 'CommentsTokenImpl'),
        get<_i22.UserCubit>(),
        get<_i43.CommentSectionUsecase>(),
        get<_i8.DeviceInfoProvider>(),
        get<_i49.CommentSectionCubit>(),
      ));
  gh.lazySingleton<_i55.EventsCubit>(
      () => _i55.EventsCubit(get<_i52.EventsUseCase>()));
  return get;
}
