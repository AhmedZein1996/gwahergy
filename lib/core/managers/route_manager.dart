import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gwahergy/categories/presentation/screens/categories_screen.dart';
import 'package:gwahergy/categories/presentation/screens/category_products.dart';

import '../../home/presentation/screens/home_layout.dart';
import '../../search/presentation/screens/search_screen.dart';
import '../../welcome/presentation/screens/welcome_screen.dart';
import '../services/services.dart';
import '../shared/blocs/nav_bar/nav_bar_cubit.dart';

class Routes {
  // static const String splash = '/';
  // static const String welcome = '/welcome';
  static const String welcome = '/';
  static const String home = '/home';
  static const String blog = '/blog';
  static const String popularProduct = '/popularProduct';
  static const String currency = '/currency';
  static const String contactUs = '/contactUs';
  static const String categoryProducts = '/categoryProducts';
  static const String categories = '/categories';
  static const String search = '/search';
}

class RouteGenerator {
  static Route<dynamic>? getRoute(RouteSettings settings) {
    switch (settings.name) {
      // case Routes.splash:
      //   return MaterialPageRoute(
      //     builder: (_) {
      //       return BlocProvider(
      //         create: (_) => sl<SplashCubit>()..endSplash(),
      //         child: const SplashScreen(),
      //       );
      //     },
      //   );
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
      case Routes.categories:
        return MaterialPageRoute(
          builder: (_) {
            return const CategoriesScreen();
          },
        );
      case Routes.categoryProducts:
        final String categoryName = settings.arguments as String;
        return MaterialPageRoute(
          builder: (_) {
            return CategoryProducts(
              title: categoryName,
            );
          },
        );
      case Routes.search:
        return MaterialPageRoute(
          builder: (_) {
            return SearchScreen();
          },
        );
    }
    return null;
  }
}
