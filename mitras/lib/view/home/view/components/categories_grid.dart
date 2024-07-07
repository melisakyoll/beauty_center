import 'package:flutter/material.dart';

import '../../../../init/assets/assets_path.dart';
import '../category_card.dart';

class CategoriesGrid extends StatelessWidget {
  const CategoriesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: const [
        CategoryCard(
          image: AppAssetsPath.HOME_PAGE_CATEGORY_FACE,
          label: 'Cilt Bakımı',
        ),
        CategoryCard(
          image: AppAssetsPath.HOME_PAGE_CATEGORY_MAKEUP,
          label: 'Makyaj',
        ),
        CategoryCard(
          image: AppAssetsPath.HOME_PAGE_CATEGORY_HAIR,
          label: 'Saç Bakımı',
        ),
        CategoryCard(
          image: AppAssetsPath.HOME_PAGE_CATEGORY_FOOT,
          label: 'Tırnak Bakımı',
        ),
      ],
    );
  }
}
