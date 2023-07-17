import 'package:get_it/get_it.dart';

import '../../home/presentation/blocs/splash/splash_cubit.dart';
import '../shared/blocs/nav_bar/nav_bar_cubit.dart';

final sl = GetIt.instance;

Future<void> initServices() async {
  // external
  // sl.registerLazySingleton(
  //   () => _DioService.init(),
  // );
  // final sharedPreferences = await _SharedPreferencesService.init();
  // sl.registerLazySingleton<SharedPreferences>(
  //   () => sharedPreferences,
  // );

  // data sources

  // sl.registerLazySingleton<PostsRemoteDataSource>(
  //   () => PostsRemoteDataSourceImpl(sl()),
  // );

  // repositories

  // sl.registerLazySingleton<PostsRepository>(
  //   () => PostsRepositoryImpl(
  //     sl(),
  //   ),
  // );

  // use cases

  // sl.registerLazySingleton(
  //   () => GetPostsUseCase(sl()),
  // );


  // blocs
  sl.registerLazySingleton(
    () => SplashCubit(),
  );
  sl.registerLazySingleton(
        () => NavBarCubit(),
  );
  // sl.registerLazySingleton(
  //   () => PostCubit(
  //     sl(),
  //   ),
  // );
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
// class _SharedPreferencesService {
//   static Future<SharedPreferences> init() async {
//     return SharedPreferences.getInstance();
//   }
// }
