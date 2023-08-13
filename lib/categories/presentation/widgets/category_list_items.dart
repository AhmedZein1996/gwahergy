import 'package:flutter/material.dart';

import '../../../core/shared/widgets/horizontal_list_items.dart';
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
      products: products,
      child: HorizontalListItems(
        allProducts: products,
        //     color: ColorManager.productItemCard,
      ),
    );
  }
}
