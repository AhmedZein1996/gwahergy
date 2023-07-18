import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gwahergy/home/presentation/screens/welcom_screen.dart';

import '../../home/presentation/blocs/splash/splash_cubit.dart';
import '../../home/presentation/screens/home_layout.dart';
import '../../home/presentation/screens/splash_screen.dart';
import '../services/services.dart';
import '../shared/blocs/nav_bar/nav_bar_cubit.dart';

class Routes {
  static const String splash = '/';
  static const String welcome = '/welcome';
  static const String home = '/home';
  static const String post = '/post';
}

class RouteGenerator {
  static Route<dynamic>? getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(
          builder: (_) {
            return BlocProvider(
              create: (_) => sl<SplashCubit>()..endSplash(),
              child: const SplashScreen(),
            );
          },
        );
      case Routes.welcome:
        return MaterialPageRoute(
          builder: (_) {
            return const WelcomeScreen();
          },
        );
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) {
            return BlocProvider(
              create: (BuildContext context) => sl<NavBarCubit>(),
              child: const HomeLayout(),
            );
          },
        );

      // case Routes.post:
      //   return MaterialPageRoute(
      //     builder: (_) {
      //       return BlocProvider(
      //         create: (_) => sl<PostScreenCubit>()
      //           ..getRelatePosts(
      //             (settings.arguments as Post).id,
      //           ),
      //         child: PostScreen(
      //           settings.arguments as Post,
      //         ),
      //       );
      //     },
      //   );
    }
    return null;
  }
}
