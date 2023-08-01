import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/managers/color_manager.dart';
import '../../../../core/managers/size_manager.dart';

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
              // final item = HomeCubit.bannerItems[itemIndex];
              return SizedBox(
                height: 202.h,
                width: .9.sw,
                child: Stack(
                  children: [
                    Transform.rotate(
                      angle: 3.1,
                      child: ClipRRect(
                        borderRadius:  BorderRadius.all(
                          Radius.circular(
                            20.r,
                          ),
                        ),
                        child: Container(
                          decoration: const BoxDecoration(
                            // boxShadow: [
                            //   BoxShadow(
                            //     color:Color(0xFF23926F),
                            //     offset: Offset(-10, -10),
                            //     blurRadius: 20,
                            //     spreadRadius: 7,
                            //   ),
                            // ],
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF23926F),
                                Color(0xFF24687D),
                              ],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                            ),
                          ),
                          child: BackdropFilter(
                            filter:
                                ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                            child: Container(
                              width: 1.sw,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Transform.rotate(
                    //   angle: 3.1,
                    //   child: ClipRRect(
                    //     borderRadius: const BorderRadius.all(
                    //       Radius.circular(
                    //         20.0,
                    //       ),
                    //     ),
                    //     child: BackdropFilter(
                    //       filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
                    //       child: Container(
                    //         width: 1.sw,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          20.0,
                        ),
                      ),
                      child: Image.asset(
                        'assets/images/slider_image.png',
                        width: 1.sw,
                        fit: BoxFit.cover,
                      ),
                    ),
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
                setState(() {
                  currentIndex = index;
                });
                // context.read<HomeCubit>().changeBanner(index);
              },
            ),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        buildSliderDots(),
      ],
    );
  }

  Widget buildSliderDots() {
    // return BlocSelector<HomeCubit, HomeState, int>(
    //   selector: (state) {
    //     return state.bannerActiveIndex;
    //   },
    //   builder: (context, index) {
    return AnimatedSmoothIndicator(
      activeIndex: currentIndex,
      count: 3,
      axisDirection: Axis.horizontal,
      textDirection: TextDirection.rtl,
      effect: ExpandingDotsEffect(
        spacing: 8.0,
        dotWidth: 10.0,
        dotHeight: 10.0,
        expansionFactor: 2,
        paintStyle: PaintingStyle.fill,
        dotColor: ColorManager.grey.withOpacity(.3),
        activeDotColor: ColorManager.primary,
      ),
    );
    //   },
    // );
  }
}
