import 'package:flutter/material.dart';

import '../../../core/managers/asset_manager.dart';
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
      itemCount: 5,
      itemBuilder: (context, index) {
        return const ProductItemCard(
          product: ProductEntity(
            id: 1,
            title: 'خاتم',
            imgUrl: ImageManager.ring,
            price: '5000',
            weight: '5',
            description: '',
          ),
        );
      },
    );
  }
}
