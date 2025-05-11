import 'package:e_commerce_app/core/constants/app_assets.dart';
import 'package:e_commerce_app/core/constants/app_routes.dart';
import 'package:e_commerce_app/core/constants/app_strings.dart';
import 'package:e_commerce_app/core/constants/app_styles.dart';
import 'package:e_commerce_app/core/utils/main_button.dart';
import 'package:e_commerce_app/features/auth/presentation/components/custom_text_field.dart';
import 'package:e_commerce_app/features/auth/presentation/components/onboarding_photo.dart';
import 'package:flutter/material.dart';

class ForgotPasswordForm extends StatelessWidget {
  const ForgotPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnboardingPhoto(image: AppAssets.forgotPassword),
        SizedBox(height: 40),
        Text(
          AppStrings.forgotPassword,
          style: AppStyles.primaryTextStyle.copyWith(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16),
        Text(
          "Please write your email or phone number to receive a confirmation code to set a new password.",
          style: AppStyles.secondaryTextStyle.copyWith(color: Colors.black),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomTextField(
            hintText: '${AppStrings.email} / ${AppStrings.phone}',
            obscureText: false,
          ),
        ),
        SizedBox(height: 24),
        MainButton(
          title: AppStrings.confirm,
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.verifyEmailScreen);
          },
        ),
      ],
    );
  }
}
