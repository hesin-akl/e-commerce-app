import 'package:e_commerce_app/core/widgets/not_found_screen.dart';
import 'package:e_commerce_app/features/Splash/views/splash_screen.dart';
import 'package:e_commerce_app/features/auth/presentation/forgot_password/forgot_password_screen.dart';
import 'package:e_commerce_app/features/auth/presentation/login/log_in_screen.dart';
import 'package:e_commerce_app/features/auth/presentation/new_password/new_password_screen.dart';
import 'package:e_commerce_app/features/auth/presentation/signup/signup_screen.dart';
import 'package:e_commerce_app/features/auth/presentation/update_profile/update_profile_screen.dart';
import 'package:e_commerce_app/features/auth/presentation/verify_email/verify_email_screen.dart';
import 'package:e_commerce_app/features/home/presentation/views/home/home_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/signup':
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => const LogInScreen());
      case '/forgot-password':
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
      case '/verify-email':
        return MaterialPageRoute(builder: (_) => const VerifyEmailScreen());
      case '/new-password':
        return MaterialPageRoute(builder: (_) => const NewPasswordScreen());
      case '/update-profile':
        return MaterialPageRoute(builder: (_) => const UpdateProfileScreen());
      default:
        return MaterialPageRoute(
          builder:
              (_) =>
                  NotFoundScreen(routeName: settings.name ?? 'Unknown Route'),
        );
    }
  }
}
