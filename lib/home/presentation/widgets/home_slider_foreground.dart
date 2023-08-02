import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gwahergy/core/managers/asset_manager.dart';
class HomeSliderForeground extends StatelessWidget {
  const HomeSliderForeground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(
          20.0,
        ),
      ),
      child: Image.asset(
        ImageManager.homeSliderImage,
        width: 1.sw,
        fit: BoxFit.cover,
      ),
    );
  }
}