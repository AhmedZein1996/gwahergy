import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/managers/asset_manager.dart';


class ProductItemCard extends StatelessWidget {
  final Color backgroundColor;
  const ProductItemCard({
    this.backgroundColor = Colors.white,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      color: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          20.r,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.r),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                20.r,
              ),
              child: Image.asset(
                ImageManager.popularImage,
                height: 120.h,
                width: 154.w,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              height: 30.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'غويشه',
                  ),
                  SvgPicture.asset(
                    IconManager.popular,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              height: 24.h,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '15 جرام',
                  ),
                  Text(
                    '34527 LE',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}