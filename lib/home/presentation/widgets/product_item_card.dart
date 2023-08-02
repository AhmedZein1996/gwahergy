import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/managers/asset_manager.dart';
import '../../domain/entities/product/product_entity.dart';


class ProductItemCard extends StatelessWidget {
  final Color? backgroundColor;
  final ProductEntity product;
  const ProductItemCard({
    this.backgroundColor = Colors.white,
   required this.product,
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
                product.imgUrl,
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
                  Text(
                    product.title,
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
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${product.weight} جرام',
                  ),
                  Text(
                    '${product.price} LE',
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