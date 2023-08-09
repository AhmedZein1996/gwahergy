import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeCategoryBackground extends StatelessWidget {
  final String imagePath;
  final double padding;
  final double height;

  const HomeCategoryBackground({
    super.key,
    required this.imagePath,
    this.padding = 8,
    this.height = 560,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding.w),
      child: Card(
        margin: EdgeInsets.zero,
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            20.r,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
            20.r,
          ),
          child: imagePath.endsWith('.svg')
              ? SizedBox(
                  width: 1.sw,
                  height: height.h,
                  child: SvgPicture.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                )
              : SizedBox(
                  width: 1.sw,
                  height: height.h,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
        ),
      ),
    );
  }
}
