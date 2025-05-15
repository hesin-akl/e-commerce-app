import 'package:e_commerce_app/core/themeing/app_styles.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String name;
  final String img;
  const CategoryItem({super.key, required this.name, required this.img});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(shape: BoxShape.circle),
          child: Image.asset(img, width: 40, height: 40),
        ),
        const SizedBox(height: 6),
        Text(name, style: AppStyles.secondaryTextStyle.copyWith(fontSize: 12)),
      ],
    );
  }
}
