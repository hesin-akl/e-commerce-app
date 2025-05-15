import 'package:e_commerce_app/core/routing/routes.dart';
import 'package:e_commerce_app/core/themeing/app_strings.dart';
import 'package:e_commerce_app/core/themeing/app_styles.dart';
import 'package:e_commerce_app/core/widgets/main_button.dart';
import 'package:e_commerce_app/features/auth/presentation/components/input_box_widget.dart';
import 'package:flutter/material.dart';

class NewPasswordForm extends StatefulWidget {
  const NewPasswordForm({super.key});

  @override
  State<NewPasswordForm> createState() => _NewPasswordFormState();
}

class _NewPasswordFormState extends State<NewPasswordForm> {
  bool isSecured = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.newPassword,
            style: AppStyles.primaryTextStyle.copyWith(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Text(
            AppStrings.plzEnterNewPassword,
            style: AppStyles.primaryTextStyle,
          ),
          SizedBox(height: 40),
          InputBoxWidget(
            hintText: AppStrings.enterYourPassword,
            labelText: AppStrings.password,
            obscureText: isSecured,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isSecured = !isSecured;
                });
              },
              icon:
                  isSecured
                      ? Icon(Icons.remove_red_eye)
                      : Icon(Icons.visibility_off),
            ),
          ),
          SizedBox(height: 8),

          InputBoxWidget(
            hintText: AppStrings.repeatPassword,
            labelText: AppStrings.repeatPassword,
            obscureText: isSecured,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isSecured = !isSecured;
                });
              },
              icon:
                  isSecured
                      ? Icon(Icons.remove_red_eye)
                      : Icon(Icons.visibility_off),
            ),
          ),
          SizedBox(height: 24),
          Center(
            child: MainButton(
              title: AppStrings.confirmPassword,
              onPressed: () {
                Navigator.pushNamed(context, Routes.updateProfile);
              },
            ),
          ),
        ],
      ),
    );
  }
}
