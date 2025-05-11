import 'package:flutter/material.dart';

class OnboardingPhoto extends StatelessWidget {
  final String image;
  const OnboardingPhoto({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      width: 310,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
