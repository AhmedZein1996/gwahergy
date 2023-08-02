import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/managers/route_manager.dart';
import '../../../core/managers/size_manager.dart';

class ClientDrawer extends StatelessWidget {
  const ClientDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(
          AppPadding.screenBodyPadding,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 52.h,
            ),
            const Text(
              'الاعدادات',
            ),
            ListTile(
              title: const Text('خد لفة'),
              leading: const Icon(Icons.person_outlined),
              onTap: () {
                Navigator.of(context).pushNamed(Routes.categories);
              },
            ),
            ListTile(
              title: const Text('الأكثر شهرة'),
              leading: const Icon(Icons.category_outlined),
              onTap: () {
                Navigator.of(context).pushNamed(Routes.popularProduct);
              },
            ),
            ListTile(
              title: const Text('المدونة'),
              leading: const Icon(Icons.category_outlined),
              onTap: () {
                Navigator.of(context).pushNamed(Routes.blog);
              },
            ),
            ListTile(
              title: const Text('أسعار اليوم'),
              leading: const Icon(Icons.category_outlined),
              onTap: () {
                Navigator.of(context).pushNamed(Routes.currency);
              },
            ),
            ListTile(
              title: const Text('الجواهرجى'),
              leading: const Icon(Icons.category_outlined),
              onTap: () {
                Navigator.of(context).pushNamed(Routes.contactUs);
              },
            ),
          ],
        ),
      ),
    );
  }
}
