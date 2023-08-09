import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gwahergy/core/shared/widgets/horizontal_list_items.dart';
import 'package:gwahergy/home/domain/entities/product/product_entity.dart';
import 'package:gwahergy/home/presentation/widgets/home_category_background.dart';
import 'package:gwahergy/home/presentation/widgets/product_details_screen_background_lines.dart';
import 'package:gwahergy/home/presentation/widgets/product_details_title_rectangular_card.dart';
import 'package:gwahergy/home/presentation/widgets/products_details_section_title.dart';

import '../widgets/product_details_description_rectangular_card.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductEntity product;
  final List<ProductEntity> allProducts;

  const ProductDetailsScreen({
    super.key,
    required this.product,
    required this.allProducts,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const ProductDetailsBackgroundLines(),
          Column(
            children: [
              HomeCategoryBackground(
                padding: 0,
                imagePath: product.imgUrl,
                height: 260.h,
              ),
              SizedBox(
                height: 25.h,
              ),
              ProductDetailsTitleRectangularCard(
                product: product,
              ),
              SizedBox(
                height: 25.h,
              ),
              ProductDetailsDescriptionRectangularCard(
                product: product,
              ),
              const Spacer(),
              ProductDetailsSectionTitle(
                onTap: () {},
              ),
              SizedBox(
                height: 10.h,
              ),
              HorizontalListItems(
                allProducts: allProducts,
                product: product,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
