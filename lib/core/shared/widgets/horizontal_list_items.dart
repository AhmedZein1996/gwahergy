import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gwahergy/core/shared/widgets/product_item_card.dart';

import '../../../home/domain/entities/product/product_entity.dart';
import '../../managers/size_manager.dart';

class HorizontalListItems extends StatelessWidget {
  const HorizontalListItems({
    super.key,
    required this.allProducts,
    this.product,
  });

  final List<ProductEntity> allProducts;
  final ProductEntity? product;

  @override
  Widget build(BuildContext context) {
    List<ProductEntity> otherProducts = allProducts;
    if (product != null) {
      otherProducts = allProducts
          .where(
            (p) => p.id != product!.id,
          )
          .toList();
    }
    return SizedBox(
      height: 230,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.screenBodyPadding,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: otherProducts.length,
        itemBuilder: (context, index) {
          return ProductItemCard(
            allProducts: allProducts,
            product: otherProducts[index],
            margin: const EdgeInsets.fromLTRB(4, 4, 4, 20),
            fromDetails: product != null,
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 15.w,
          );
        },
      ),
    );
  }
}
