import 'package:e_commerce_app/core/constants/app_routes.dart';
import 'package:e_commerce_app/core/constants/app_strings.dart';
import 'package:e_commerce_app/features/auth/presentation/components/have_an_acc_widget.dart';
import 'package:e_commerce_app/features/auth/presentation/login/widgets/log_in_form.dart';
import 'package:e_commerce_app/features/auth/presentation/components/logo_widget.dart';
import 'package:flutter/material.dart';

class LogInBody extends StatelessWidget {
  const LogInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            LogoWidget(),
            LogInForm(),
            SizedBox(height: 16),

            HaveAnAccWidget(
              text1: AppStrings.dontHaveAnAccount,
              text2: AppStrings.signUp,
              onPressed: () {
                Navigator.pushReplacementNamed(
                    context, AppRoutes.signupScreen);
              },
            ),
          ],
        ),
      );
  }
}