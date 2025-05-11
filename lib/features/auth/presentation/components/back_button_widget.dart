import 'package:e_commerce_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: TextButton.icon(
        onPressed: () {
          Navigator.pop(context);
        },
        label: Text(
          'Back',
          style: AppStyles.primaryTextStyle.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        icon: Icon(Icons.arrow_back_ios, size: 24, color: Colors.black),
      ),
    );
  }
}
