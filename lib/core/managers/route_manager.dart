import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gwahergy/categories/presentation/screens/category_products.dart';

import '../../home/presentation/screens/home_layout.dart';
import '../../welcome/presentation/blocs/splash/splash_cubit.dart';
import '../../welcome/presentation/screens/splash_screen.dart';
import '../../welcome/presentation/screens/welcom_screen.dart';
import '../services/services.dart';
import '../shared/blocs/nav_bar/nav_bar_cubit.dart';

class Routes {
  static const String splash = '/';
  static const String welcome = '/welcome';
  static const String home = '/home';
  static const String blog = '/blog';
  static const String popularProduct = '/popularProduct';
  static const String categories = '/categories';
  static const String currency = '/currency';
  static const String contactUs = '/contactUs';
  static const String categoryProducts = '/categoryProducts';
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
      case Routes.categoryProducts:
        return MaterialPageRoute(
          builder: (_) {
            return BlocProvider(
              create: (BuildContext context) => sl<NavBarCubit>(),
              child: const CategoryProducts(),
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
