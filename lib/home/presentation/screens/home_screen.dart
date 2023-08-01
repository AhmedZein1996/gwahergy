import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/home_first_category.dart';
import '../widgets/home_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        onRefresh: () async {
          // TODO: call get products here
        },
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                const HomeSlider(),
                SizedBox(
                  height: 25.h,
                ),
                const HomeFirstCategory(),
                SizedBox(
                  height: 100.h,
                ),
              ],
            ),
          ),
        ));
  }
}
