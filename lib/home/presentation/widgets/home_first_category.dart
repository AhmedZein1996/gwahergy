import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gwahergy/home/presentation/widgets/product_item_card.dart';

import '../../../core/managers/size_manager.dart';
import '../../../core/managers/text_styles_manager.dart';

class HomeFirstCategory extends StatelessWidget {
  const HomeFirstCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Container(
        //     decoration:  BoxDecoration(
        //       //Here goes the same radius, u can put into a var or function
        //       borderRadius: BorderRadius.circular(20.r),
        //       boxShadow: [
        //         BoxShadow(
        //           color: Colors.black.withOpacity(.38),
        //           offset: const Offset(4,4),
        //           blurRadius: 8,
        //         ),
        //       ],
        //     ),
        //     child: ClipRRect(
        //       borderRadius: BorderRadius.circular(
        //         20.r,
        //       ),
        //       child: Image.asset(
        //         'assets/images/rings_background.png',
        //         width: 1.sw,
        //         height: 560.h,
        //         fit: BoxFit.cover,
        //       ),
        //     ),
        //   ),
        // ),
        Padding(
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
              child: Image.asset(
                'assets/images/rings_background.png',
                width: 1.sw,
                height: 560.h,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppPadding.padding16.w,
            vertical: AppPadding.padding24.h,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppPadding.padding24.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'خواتم',
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
              ),
              SizedBox(
                height: 20.h,
              ),
              const Row(
                children: [
                  Expanded(
                    child: ProductItemCard(
                      backgroundColor: Color(0xFFFFF895),
                    ),
                  ),
                  Expanded(
                    child: ProductItemCard(
                      backgroundColor: Color(0xFFFFF895),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              const Row(
                children: [
                  Expanded(
                    child: ProductItemCard(
                      backgroundColor: Color(0xFFFFF895),
                    ),
                  ),
                  Expanded(
                    child: ProductItemCard(
                      backgroundColor: Color(0xFFFFF895),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
