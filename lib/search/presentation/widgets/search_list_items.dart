import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/managers/size_manager.dart';
import '../../../core/shared/widgets/rectangle_product_item_card.dart';
import '../../../home/domain/entities/product/product_entity.dart';

class SearchListItems extends StatelessWidget {
  const SearchListItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.fromLTRB(
          AppPadding.padding6.w,
          AppPadding.padding50.h,
          AppPadding.padding6.w,
          AppPadding.padding16.h,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return RectangleProductItemCard(
            product: products[index],
          );
        },
        separatorBuilder: (BuildContext context, int index) => SizedBox(
          height: 15.h,
        ),
      ),
    );
  }
}
