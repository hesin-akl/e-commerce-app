import 'package:e_commerce_app/core/constants/app_color.dart';
import 'package:e_commerce_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class HaveAnAccWidget extends StatelessWidget {
  final String text1;
  final String text2;
  final VoidCallback onPressed;
  const HaveAnAccWidget({super.key, required this.text1, required this.text2, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text1, style: AppStyles.primaryTextStyle),
        TextButton(
          onPressed: onPressed,
          child: Text(
            text2,
            style: AppStyles.primaryTextStyle.copyWith(
              fontWeight: FontWeight.w500,
              color: AppColors.primary,
            ),
          ),
        ),
      ],
    );
  }
}
