import 'package:get_it/get_it.dart';
import 'package:gwahergy/welcome/data/data_sources/local/data_sources/welcome_cache_data_source.dart';
import 'package:gwahergy/welcome/data/repositories/welcome_repository_impl.dart';
import 'package:gwahergy/welcome/domain/repositories/welcome_repository.dart';
import 'package:gwahergy/welcome/presentation/blocs/welcome/welcome_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../welcome/domain/use_cases/check_welcome_status_use_case.dart';
import '../../welcome/domain/use_cases/complete_welcome_use_case.dart';
import '../../welcome/presentation/blocs/splash/splash_cubit.dart';
import '../shared/blocs/nav_bar/nav_bar_cubit.dart';

final sl = GetIt.instance;

Future<void> initServices() async {
  // external
  // sl.registerLazySingleton(
  //   () => _DioService.init(),
  // );
  final sharedPreferences = await _SharedPreferencesService.init();
  sl.registerLazySingleton<SharedPreferences>(
    () => sharedPreferences,
  );

  // data sources

  sl.registerLazySingleton<WelcomeCacheDataSource>(
    () => WelcomeCacheDataSourceImpl(
      sl(),
    ),
  );

  // repositories

  sl.registerLazySingleton<WelcomeRepository>(
    () => WelcomeRepositoryImpl(
      sl(),
    ),
  );

  // use cases

  sl.registerLazySingleton<CheckWelcomeStatusUseCase>(
    () => CheckWelcomeStatusUseCase(
      sl(),
    ),
  );
  sl.registerLazySingleton<CompleteOnBoardingWelcomeUseCase>(
    () => CompleteOnBoardingWelcomeUseCase(
      sl(),
    ),
  );

  // blocs
  sl.registerLazySingleton(
    () => SplashCubit(),
  );
  sl.registerLazySingleton(
    () => NavBarCubit(),
  );
  sl.registerLazySingleton(
    () => WelcomeCubit(
      sl(),
      sl(),
    ),
  );
}

// class _DioService {
//   static Dio init({
//     String baseUrl = ApiConstants.baseUrl,
//   }) {
//     final dio = Dio(
//       BaseOptions(
//         baseUrl: baseUrl,
//         connectTimeout: const Duration(seconds: 15),
//         receiveTimeout: const Duration(seconds: 15),
//         receiveDataWhenStatusError: true,
//         followRedirects: false,
//         validateStatus: (status) {
//           return true;
//         },
//       ),
//     );
//     _addDioLogger(dio);
//
//     return dio;
//   }
//
//   static void _addDioLogger(Dio dio) {
//     dio.interceptors.add(
//       PrettyDioLogger(
//         requestHeader: true,
//         requestBody: true,
//         responseBody: true,
//         responseHeader: false,
//         error: true,
//         compact: true,
//         maxWidth: 90,
//       ),
//     );
//   }
// }
//
class _SharedPreferencesService {
  static Future<SharedPreferences> init() async {
    return SharedPreferences.getInstance();
  }
}
