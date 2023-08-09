import 'package:flutter/material.dart';

import '../../../core/shared/widgets/product_item_card.dart';
import '../../domain/entities/product/product_entity.dart';

class LatestProductsListItems extends StatelessWidget {
  const LatestProductsListItems({super.key});

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
