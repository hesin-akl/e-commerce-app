import 'package:e_commerce_app/features/home/data/category/category_data.dart';
import 'package:e_commerce_app/features/home/presentation/views/home/widgets/category_item.dart';

import 'package:flutter/material.dart';

class CatogriesListView extends StatelessWidget {
  const CatogriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: catogriesData.length,
        itemBuilder: (context, index) {
          final item = catogriesData[index];
          return CategoryItem(name: item.name, img: item.image);
        },
        separatorBuilder: (context, index) => const SizedBox(width: 16),
      ),
    );
  }
}
