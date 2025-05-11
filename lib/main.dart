import 'package:e_commerce_app/features/Splash/views/splash_screen.dart';
import 'package:e_commerce_app/features/auth/presentation/forgot_password/forgot_password_screen.dart';
import 'package:e_commerce_app/features/auth/presentation/login/log_in_screen.dart';
import 'package:e_commerce_app/features/auth/presentation/new_password/new_password_screen.dart';
import 'package:e_commerce_app/features/auth/presentation/signup/signup_screen.dart';
import 'package:e_commerce_app/features/auth/presentation/update_profile/update_profile_screen.dart';
import 'package:e_commerce_app/features/auth/presentation/verify_email/verify_email_screen.dart';
import 'package:e_commerce_app/features/home/presentation/views/home/home_screen.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/signup': (context) => SignupScreen(),
        '/home': (context) => HomeScreen(),
        '/login': (context) => LogInScreen(),
        '/forgot-password': (context) => ForgotPasswordScreen(),
        '/verify-email': (context) => VerifyEmailScreen(),
        '/new-password': (context) => NewPasswordScreen(),
        '/update-profile': (context) => UpdateProfileScreen(),
      },
    );
  }
}
