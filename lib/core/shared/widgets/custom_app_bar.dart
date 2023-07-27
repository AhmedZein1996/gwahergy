import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../managers/asset_manager.dart';
import '../../managers/text_styles_manager.dart';

buildAppBarWithLogo(BuildContext context, String logoPath) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    leading: IconButton(
      onPressed: () {},
      icon:  Image.asset(IconManager.searchPng)
    ),
    title: Padding(
      padding: EdgeInsets.only(top: 10.0.h),
      child: SvgPicture.asset(
        logoPath,
        width: 90,
        height: 45,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.menu_outlined),
      ),
    ],
  );
}

buildAppBarWithTitleAndActions(BuildContext context, String title) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    leading: IconButton(
      onPressed: () {},
      icon: const Icon(Icons.menu_outlined),
    ),
    title: Text(title),
    actions: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search_outlined),
        ),
      ),
    ],
  );
}

buildTransparentAppBarWithTitle({String? title}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Padding(
      padding: EdgeInsets.only(top: 10.0.h),
      child: title != null
          ? Text(
              title,
              style: TextStyleManager.darkBlue_26BOLD,
            )
          : null,
    ),
  );
}
