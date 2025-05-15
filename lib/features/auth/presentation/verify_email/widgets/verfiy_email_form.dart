import 'package:e_commerce_app/core/themeing/app_assets.dart';
import 'package:e_commerce_app/core/themeing/app_color.dart';
import 'package:e_commerce_app/core/routing/routes.dart';
import 'package:e_commerce_app/core/themeing/app_strings.dart';
import 'package:e_commerce_app/core/themeing/app_styles.dart';
import 'package:e_commerce_app/core/widgets/main_button.dart';
import 'package:e_commerce_app/core/widgets/custom_text_field.dart';
import 'package:e_commerce_app/features/auth/presentation/components/onboarding_photo.dart';
import 'package:flutter/material.dart';

class VerfiyEmailForm extends StatelessWidget {
  const VerfiyEmailForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        OnboardingPhoto(image: AppAssets.verifyEmail),
        SizedBox(height: 40),

        Text(
          AppStrings.verifyEmail,
          style: AppStyles.primaryTextStyle.copyWith(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppStrings.verifyEmailText,
              style: AppStyles.secondaryTextStyle.copyWith(color: Colors.black),
              textAlign: TextAlign.center,
            ),
            Text(
              AppStrings.emailExample,
              style: AppStyles.secondaryTextStyle.copyWith(
                color: AppColors.primary,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 29),
          child: CustomTextField(hintText: 'OTP', obscureText: false),
        ),
        MainButton(
          title: AppStrings.confirmCode,
          onPressed: () {
            Navigator.pushNamed(context, Routes.newPasswordScreen);
          },
        ),
      ],
    );
  }
}
