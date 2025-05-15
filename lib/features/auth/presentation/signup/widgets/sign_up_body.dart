import 'package:e_commerce_app/core/helpers/extention.dart';
import 'package:e_commerce_app/core/routing/routes.dart';
import 'package:e_commerce_app/core/themeing/app_strings.dart';
import 'package:e_commerce_app/features/auth/presentation/components/have_an_acc_widget.dart';
import 'package:e_commerce_app/features/auth/presentation/components/logo_widget.dart';
import 'package:e_commerce_app/features/auth/presentation/signup/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            LogoWidget(),
            SignUpForm(),

            SizedBox(height: 8),
            HaveAnAccWidget(
              text1: AppStrings.alreadyHaveAnAccount,
              text2: AppStrings.logIn,
              onPressed: () {
                context.pushNamed(Routes.loginScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
