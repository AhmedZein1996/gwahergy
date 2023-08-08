import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/managers/route_manager.dart';
import '../../../core/managers/size_manager.dart';
import '../../../core/shared/widgets/category_section_title.dart';

class CategoryBackground extends StatelessWidget {
  final Widget child;
  final String title;

  const CategoryBackground({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.w),
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.r),
            bottomRight: Radius.circular(20.r),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            CategorySectionTitle(
              title: title,
              padding: EdgeInsets.only(
                right: AppPadding.padding24.w,
                left: AppPadding.padding12.w,
              ),
              onTap: () {
                Navigator.of(context)
                    .pushNamed(Routes.categoryProducts, arguments: title);
              },
            ),
            SizedBox(
              height: 20.h,
            ),
            child,
          ],
        ),
      ),
    );
  }
}
