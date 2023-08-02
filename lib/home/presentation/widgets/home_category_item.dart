import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gwahergy/home/domain/entities/product/product_entity.dart';
import 'package:gwahergy/home/presentation/widgets/product_item_card.dart';

import '../../../core/managers/size_manager.dart';
import 'home_category_background.dart';
import 'home_category_section_title.dart';

class HomeCategoryItem extends StatelessWidget {
  final List<ProductEntity> products;
  final String homeCategoryBackgroundLines;
  final Color? productItemsCardBackgroundColor;

  const HomeCategoryItem(
      {super.key,
      required this.products,
      required this.homeCategoryBackgroundLines,
      this.productItemsCardBackgroundColor});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        HomeCategoryBackground(
          imagePath: homeCategoryBackgroundLines,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppPadding.padding16.w,
            vertical: AppPadding.padding24.h,
          ),
          child: productList(productItemsCardBackgroundColor),
        ),
      ],
    );
  }

  Column productList(Color? productItemsCardBackgroundColor) {
    final List<ProductItemCard> productItems = List.generate(
        products.length,
        (index) => ProductItemCard(
              backgroundColor: productItemsCardBackgroundColor,
              product: ProductEntity(
                title: products[index].title,
                imgUrl: products[index].imgUrl,
                price: products[index].price,
                weight: products[index].weight,
                description: products[index].description,
              ),
            ));
    return Column(
      children: [
        const HomeCategorySectionTitle(
          title: 'غوايش',
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            Expanded(
              child: productItems[0],
            ),
            Expanded(
              child: productItems[1],
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            Expanded(
              child: productItems[2],
            ),
            Expanded(
              child: productItems[3],
            ),
          ],
        ),
      ],
    );
  }
}
