import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/managers/asset_manager.dart';
import '../../../core/shared/widgets/client_drawer.dart';
import '../../../core/shared/widgets/custom_app_bar.dart';
import '../../domain/entities/product/product_entity.dart';
import '../widgets/home_category_item.dart';
import '../widgets/home_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        // TODO: call get products here
      },
      child: Scaffold(
        appBar: buildAppBarWithLogo(
          context,
          ImageManager.homeLogo,
        ),
        drawer: const ClientDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              const HomeSlider(),
              SizedBox(
                height: 25.h,
              ),
              const HomeCategoryItem(
                homeCategoryBackgroundLines:
                    ImageManager.homeFirstCategoryBackgroundLines,
                productItemsCardBackgroundColor: Color(0xFFFFF895),
                products: [
                  ProductEntity(
                    title: 'خاتم',
                    imgUrl: ImageManager.ring,
                    price: '5000',
                    weight: '5',
                    description: '',
                  ),
                  ProductEntity(
                    title: 'خاتم',
                    imgUrl: ImageManager.ring,
                    price: '5000',
                    weight: '5',
                    description: '',
                  ),
                  ProductEntity(
                    title: 'خاتم',
                    imgUrl: ImageManager.ring,
                    price: '5000',
                    weight: '5',
                    description: '',
                  ),
                  ProductEntity(
                    title: 'خاتم',
                    imgUrl: ImageManager.ring,
                    price: '5000',
                    weight: '5',
                    description: '',
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              const HomeCategoryItem(
                homeCategoryBackgroundLines:
                    ImageManager.homeSecondCategoryBackgroundLines,
                products: [
                  ProductEntity(
                    title: 'غويشة',
                    imgUrl: ImageManager.bracelet,
                    price: '34725',
                    weight: '15',
                    description: '',
                  ),
                  ProductEntity(
                    title: 'غويشة',
                    imgUrl: ImageManager.bracelet,
                    price: '34725',
                    weight: '15',
                    description: '',
                  ),
                  ProductEntity(
                    title: 'غويشة',
                    imgUrl: ImageManager.bracelet,
                    price: '34725',
                    weight: '15',
                    description: '',
                  ),
                  ProductEntity(
                    title: 'غويشة',
                    imgUrl: ImageManager.bracelet,
                    price: '34725',
                    weight: '15',
                    description: '',
                  ),
                ],
              ),
              SizedBox(
                height: 100.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
