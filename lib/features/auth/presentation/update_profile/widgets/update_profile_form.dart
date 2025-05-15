import 'package:e_commerce_app/core/routing/routes.dart';
import 'package:e_commerce_app/core/themeing/app_strings.dart';
import 'package:e_commerce_app/core/widgets/main_button.dart';
import 'package:e_commerce_app/features/auth/presentation/components/input_box_widget.dart';
import 'package:e_commerce_app/features/auth/presentation/update_profile/widgets/pick_img_widget.dart';
import 'package:flutter/material.dart';

class UpdateProfileForm extends StatelessWidget {
  const UpdateProfileForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          PickImgWidget(),
          SizedBox(height: 25),
          InputBoxWidget(
            hintText: AppStrings.username,
            labelText: AppStrings.username,
            obscureText: false,
          ),
          SizedBox(height: 16),
          InputBoxWidget(
            hintText: AppStrings.emailExample,
            labelText: AppStrings.email,
            obscureText: false,
          ),
          SizedBox(height: 16),
          InputBoxWidget(
            hintText: AppStrings.phoneExample,
            labelText: AppStrings.phone,
            obscureText: false,
          ),
          SizedBox(height: 16),
          InputBoxWidget(
            hintText: AppStrings.enterYourAddress,
            labelText: AppStrings.yourAddress,
            obscureText: false,
          ),
          SizedBox(height: 40),
          MainButton(
            title: AppStrings.updateInformation,
            onPressed: () {
              Navigator.pushReplacementNamed(context, Routes.homeScreen);
            },
          ),
        ],
      ),
    );
  }
}
