import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../home/domain/entities/product/product_entity.dart';
import '../../managers/asset_manager.dart';
import '../../managers/route_manager.dart';
import '../../managers/text_styles_manager.dart';

class ProductItemCard extends StatelessWidget {
  final Color? backgroundColor;
  final ProductEntity product;
  final List<ProductEntity> allProducts;
  final EdgeInsets? margin;
  final bool fromDetails;

  const ProductItemCard({
    this.backgroundColor = Colors.white,
    required this.product,
    required this.allProducts,
    this.fromDetails = false,
    this.margin,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: fromDetails
          ? () {
              Navigator.of(context).pushReplacementNamed(
                Routes.productDetails,
                arguments: {
                  'product': product,
                  'allProducts': allProducts,
                },
              );
            }
          : () {
              Navigator.of(context).pushNamed(
                Routes.productDetails,
                arguments: {
                  'product': product,
                  'allProducts': allProducts,
                },
              );
            },
      child: Card(
        elevation: 8,
        margin: margin,
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
              SizedBox(
                width: 145.w,
                height: 120.h,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    20.r,
                  ),
                  child: Image.asset(
                    product.imgUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 30.h,
                width: 155.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product.title,
                      style: TextStyleManager.black_20BOLD.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
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
                width: 155.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${product.weight}جرام',
                      style: TextStyleManager.black_16,
                    ),
                    Text(
                      '${product.price} LE',
                      style: TextStyleManager.black_16,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
