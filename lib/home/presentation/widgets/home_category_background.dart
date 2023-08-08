import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeCategoryBackground extends StatelessWidget {
  final String imagePath;

  const HomeCategoryBackground({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Card(
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
                  child: SvgPicture.asset(
                    imagePath,
                    height: 560.h,
                    fit: BoxFit.cover,
                  ),
                )
              : Image.asset(
                  imagePath,
                  width: 1.sw,
                  height: 560.h,
                  fit: BoxFit.cover,
                ),
        ),
      ),
    );
  }
}
