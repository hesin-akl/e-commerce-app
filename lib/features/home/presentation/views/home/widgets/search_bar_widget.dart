import 'package:e_commerce_app/core/constants/app_strings.dart';
import 'package:e_commerce_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: AppStrings.searchBar,
        hintStyle: AppStyles.secondaryTextStyle.copyWith(fontSize: 16),
        prefixIcon: const Icon(Icons.search, size: 24),
        suffixIcon: const Icon(Icons.tune, size: 24),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
