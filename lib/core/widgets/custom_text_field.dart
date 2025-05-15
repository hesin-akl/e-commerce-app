import 'package:e_commerce_app/core/themeing/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final Widget? suffixIcon;
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.obscureText,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: hintText,
        helperStyle: AppStyles.primaryTextStyle.copyWith(
          fontWeight: FontWeight.w300,
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
