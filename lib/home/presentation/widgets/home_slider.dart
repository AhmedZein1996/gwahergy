import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/managers/size_manager.dart';
import 'home_slider_background.dart';
import 'home_slider_foreground.dart';
import 'home_slider_indicator.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.screenBodyPadding,
          ),
          child: CarouselSlider.builder(
            itemCount: 3,
            itemBuilder: (
              BuildContext context,
              int itemIndex,
              int pageViewIndex,
            ) {
              return SizedBox(
                height: 202.h,
                width: .9.sw,
                child: const Stack(
                  children: [
                    HomeSliderBackground(),
                    HomeSliderForeground(),
                  ],
                ),
              );
            },
            options: CarouselOptions(
              height: 215.h,
              enlargeStrategy: CenterPageEnlargeStrategy.zoom,
              viewportFraction: 1,
              enableInfiniteScroll: false,
              autoPlay: true,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(
                  () {
                    currentIndex = index;
                  },
                );
                // context.read<HomeCubit>().changeBanner(index);
              },
            ),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        HomeSliderIndicator(
          currentIndex: currentIndex,
        ),
      ],
    );
  }
}
