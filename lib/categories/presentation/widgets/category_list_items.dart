import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/managers/size_manager.dart';
import '../../../core/shared/widgets/product_item_card.dart';
import '../../../home/domain/entities/product/product_entity.dart';
import 'category_background.dart';

class CategoryListItems extends StatelessWidget {
  final List<ProductEntity> products;
  final String title;

  const CategoryListItems({
    Key? key,
    required this.title,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CategoryBackground(
      title: title,
      child: SizedBox(
        height: 230,
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.screenBodyPadding,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductItemCard(
              product: products[index],
              margin: const EdgeInsets.fromLTRB(4, 4, 4, 20),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 15.w,
            );
          },
        ),
      ),
    );
  }
}
