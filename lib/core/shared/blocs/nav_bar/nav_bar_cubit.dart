import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../home/presentation/screens/popular_products_screen.dart';
import '../../../../blogs/presentation/screens/blog_screen.dart';
import '../../../../home/presentation/screens/home_screen.dart';
import '../../../constants/constants.dart';

part 'nav_bar_state.dart';

class NavBarCubit extends Cubit<NavBarState> {
  final pages = {
    AppConstants.titles: [
      'المدونة',
      'الجواهرجي',
      'الأكثر شهرة',
    ],
    AppConstants.screens: const [
      BlogScreen(),
      HomeScreen(),
      PopularProductsScreen(),
    ],
  };

  NavBarCubit() : super(const NavBarState());

  void changeActiveIndex(int index) {
    emit(
      state.copyWith(
        index: index,
      ),
    );
  }
}
