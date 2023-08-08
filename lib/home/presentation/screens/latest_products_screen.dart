import 'package:flutter/material.dart';
import 'package:gwahergy/home/presentation/widgets/latest_product_screen_background_lines.dart';
import 'package:gwahergy/home/presentation/widgets/latest_produts_list_items.dart';

import '../../../core/managers/size_manager.dart';

class LatestProductsScreen extends StatelessWidget {
  const LatestProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          LatestProductsBackgroundLines(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppPadding.padding10,
              vertical: AppPadding.padding16,
            ),
            child: LatestProductsListItems(),
          ),
        ],
      ),
    );
  }
}
