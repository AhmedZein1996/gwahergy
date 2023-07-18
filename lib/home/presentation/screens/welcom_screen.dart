import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gwahergy/core/managers/asset_manager.dart';

import '../../../core/managers/color_manager.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Stack(
        children: [
          // Align(
          //   alignment: Alignment.topRight,
          //   child: SizedBox(
          //     width: 0.8.sw,
          //     height: 0.6.sh,
          //     child: CustomPaint(
          //       painter: AuthCustomPainter1(),
          //     ),
          //   ),
          // ),
          // Align(
          //   alignment: Alignment.bottomLeft,
          //   child: SizedBox(
          //     width: 0.7.sw,
          //     height: 0.4.sh,
          //     child: CustomPaint(
          //       painter: AuthCustomPainter2(),
          //     ),
          //   ),
          // ),
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset(ImageManager.welcomeTopLeftImage,height: 450.h,),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SvgPicture.asset(ImageManager.welcomeBottomRightImage, height: 430.h,),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 30.h,
              ),
              child: Column(
                children: [
                  SvgPicture.asset(ImageManager.welcomeLogoSvg),
                  SizedBox(
                    height: 20.h,
                  ),
                  Image.asset(ImageManager.welcomeCenterImagePng),
                  Text(
                    'تألقى باناقه',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w700,
                          color: ColorManager.primary,
                        ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Column(
                    children: [
                      Text(
                        'مجموعاتنا الفريده من',
                        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w400,
                          color: ColorManager.primary,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'المجوهرات',
                            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w400,
                              color: ColorManager.white,
                            ),
                          ),
                          SizedBox(width: 5.w,),
                          Text(
                            'الراقية',
                            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w400,
                              color: ColorManager.primary,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Positioned(
          //   bottom: 0,
          //   child: SizedBox(
          //     width: 1.sw,
          //     height: .4.sh,
          //     child: DecoratedBox(
          //       decoration: BoxDecoration(
          //           gradient: LinearGradient(
          //         colors: [
          //           Colors.white.withOpacity(0),
          //           Colors.white,
          //         ],
          //         begin: Alignment.bottomCenter,
          //         end: Alignment.topCenter,
          //       )),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
