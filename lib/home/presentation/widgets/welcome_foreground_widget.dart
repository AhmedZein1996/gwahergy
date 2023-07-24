import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gwahergy/core/managers/route_manager.dart';
import 'package:gwahergy/home/presentation/widgets/welcome_description_text.dart';

import '../../../core/managers/asset_manager.dart';
import '../../../core/managers/color_manager.dart';
import '../../../core/managers/text_styles_manager.dart';

class WelcomeForegroundWidget extends StatelessWidget {
  const WelcomeForegroundWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 25.h,
          ),
          SvgPicture.asset(ImageManager.welcomeLogoSvg),
          SizedBox(
            height: 50.h,
          ),
          Image.asset(
            ImageManager.welcomeForegroundImagePng,
            width: 233.w,
            height: 335.h,
          ),
          SizedBox(
            height: 30.h,
          ),
          const WelcomeDescriptionText(),
          SizedBox(
            height: 50.h,
          ),
          SizedBox(
            height: 56.h,
            width: 140.w,
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(
                  Routes.home,
                );
              },
              style: TextButton.styleFrom(
                backgroundColor: ColorManager.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    30.r,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'نتفرج',
                    style: TextStyleManager.darkBlue_26BOLD,
                  ),
                  const Icon(Icons.arrow_back_ios_new_outlined,
                      color: ColorManager.secondary)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
