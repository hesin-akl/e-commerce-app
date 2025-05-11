import 'package:e_commerce_app/core/constants/app_routes.dart';
import 'package:e_commerce_app/features/Splash/views/widgets/splash_body.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  goToSignupScreen() async {
    await Future.delayed(Duration(seconds: 4), () {
      if (!mounted) return;
      Navigator.pushNamed(context, AppRoutes.signupScreen);
    });
  }

  @override
  void initState() {
    goToSignupScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SplashBody());
  }
}
