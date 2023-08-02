import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'welcome_rounded_button.dart';
import '../../../core/managers/asset_manager.dart';
import 'welcome_description_text.dart';

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
          const WelcomeRoundedButton(),
        ],
      ),
    );
  }
}
