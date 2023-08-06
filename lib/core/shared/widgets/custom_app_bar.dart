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
    leading: Builder(
      builder: (context) => IconButton(
        onPressed: () => Scaffold.of(context).openDrawer(),
        icon: const Icon(
          Icons.menu_outlined,
          size: 35,
        ),
      ),
    ),
    title: Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: SvgPicture.asset(
        logoPath,
        width: 140.w,
        height: 35.h,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          IconManager.searchSvg,
        ),
      ),
    ],
  );
}

buildAppBarWithTitleAndActions(BuildContext context, String title) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: Text(
      title,
      style: TextStyleManager.darkBlue_24BOLD,
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          IconManager.searchSvg,
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
              style: TextStyleManager.darkBlue_24BOLD,
            )
          : null,
    ),
  );
}
