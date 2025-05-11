import 'package:e_commerce_app/core/constants/app_assets.dart';
import 'package:e_commerce_app/core/constants/app_color.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFD13C00), AppColors.primary, Color(0xFFFF6F1A)],
          ),
        ),
        child: Center(child: Image.asset(AppAssets.splash,fit: BoxFit.fill,)),
      );
  }
}