import 'package:e_commerce_app/core/themeing/app_strings.dart';
import 'package:e_commerce_app/core/widgets/main_button.dart';
import 'package:e_commerce_app/features/auth/presentation/components/input_box_widget.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool isSecured = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          InputBoxWidget(
            hintText: AppStrings.enterYourUsername,
            labelText: AppStrings.username,
            obscureText: false,
          ),
          SizedBox(height: 16),
          InputBoxWidget(
            hintText: AppStrings.enterYourAddress,
            labelText: AppStrings.yourAddress,
            obscureText: false,
          ),
          SizedBox(height: 16),

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
          SizedBox(height: 16),

          InputBoxWidget(
            hintText: AppStrings.confirmPassword,
            labelText: AppStrings.confirmPassword,
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
          SizedBox(height: 32),

          MainButton(title: AppStrings.signUp, onPressed: () {}),
        ],
      ),
    );
  }
}
