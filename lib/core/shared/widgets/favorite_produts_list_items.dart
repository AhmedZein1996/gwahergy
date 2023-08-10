import 'package:flutter/material.dart';

import '../../../home/domain/entities/product/product_entity.dart';
import 'product_item_card.dart';

class FavoriteProductsListItems extends StatelessWidget {
  const FavoriteProductsListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: .85,
        crossAxisSpacing: 10,
        mainAxisSpacing: 20,
      ),
      itemCount: products2.length,
      itemBuilder: (context, index) {
        return ProductItemCard(
          allProducts: products,
          product: products[index],
        );
      },
    );
  }
}
