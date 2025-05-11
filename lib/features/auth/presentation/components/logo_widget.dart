import 'package:e_commerce_app/core/constants/app_assets.dart';
import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 60, bottom: 21),
      child: Image.asset(AppAssets.logo, width: 197, height: 33),
    );
  }
}
