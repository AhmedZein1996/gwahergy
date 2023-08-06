import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gwahergy/core/shared/widgets/custom_app_bar.dart';

import '../../../core/managers/asset_manager.dart';
import '../../../core/managers/size_manager.dart';
import '../../../home/domain/entities/product/product_entity.dart';
import '../../../home/presentation/widgets/product_item_card.dart';

class CategoryProducts extends StatelessWidget {
  const CategoryProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarWithTitleAndActions(
        context,
        'خواتم',
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: SizedBox(
              height: 1.sh,
              width: 1.sw,
              child: SvgPicture.asset(
                ImageManager.popularProductsBackgroundImageSvg,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.padding10,
                vertical: AppPadding.padding16),
            child: GridView.builder(
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
                    title: 'خاتم',
                    imgUrl: ImageManager.ring,
                    price: '5000',
                    weight: '5',
                    description: '',
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}