import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/managers/size_manager.dart';
import '../../../core/managers/text_styles_manager.dart';



class HomeCategorySectionTitle extends StatelessWidget {
  final String title;
  const HomeCategorySectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppPadding.padding24.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyleManager.black_24ALMARAI,
          ),
          Row(
            children: [
              const Text(
                'شوف أكتر',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              const Icon(Icons.arrow_back_ios_new),
            ],
          ),
        ],
      ),
    );
  }
}
