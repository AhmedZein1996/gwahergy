import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gwahergy/core/managers/color_manager.dart';

import '../../../core/managers/asset_manager.dart';
import '../../../core/shared/widgets/client_drawer.dart';
import '../../../core/shared/widgets/custom_app_bar.dart';
import '../../domain/entities/product/product_entity.dart';
import '../widgets/home_category_widget.dart';
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
              HomeCategoryWidget(
                categoryTitle: 'خواتم',
                categoryBackgroundLines:
                    ImageManager.homeFirstCategoryBackgroundLines,
                productItemsCardBackgroundColor: ColorManager.productItemCard,
                products: products1,
              ),
              SizedBox(
                height: 25.h,
              ),
              HomeCategoryWidget(
                categoryTitle: 'غوايش',
                categoryBackgroundLines:
                    ImageManager.homeSecondCategoryBackgroundLines,
                products: products2,
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
