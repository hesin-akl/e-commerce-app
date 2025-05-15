import 'package:e_commerce_app/core/themeing/app_styles.dart';
import 'package:e_commerce_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class InputBoxWidget extends StatelessWidget {
  final String hintText;
  final String labelText;
  final bool obscureText;
  final Widget? suffixIcon;
  const InputBoxWidget({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.obscureText,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText, style: AppStyles.primaryTextStyle),
        SizedBox(height: 8),
        CustomTextField(
          hintText: hintText,
          obscureText: obscureText,
          suffixIcon: suffixIcon,
        ),
      ],
    );
  }
}
