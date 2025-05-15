import 'package:e_commerce_app/core/themeing/app_color.dart';
import 'package:e_commerce_app/core/routing/routes.dart';
import 'package:e_commerce_app/core/themeing/app_strings.dart';
import 'package:e_commerce_app/core/themeing/app_styles.dart';
import 'package:e_commerce_app/core/widgets/main_button.dart';
import 'package:e_commerce_app/features/auth/presentation/components/input_box_widget.dart';
import 'package:flutter/material.dart';

class LogInForm extends StatefulWidget {
  const LogInForm({super.key});

  @override
  State<LogInForm> createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  bool isSecured = true;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          InputBoxWidget(
            hintText: AppStrings.emailExample,
            labelText: '${AppStrings.email} / ${AppStrings.phone}',
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
          Padding(
            padding: const EdgeInsets.all(13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                      visualDensity: VisualDensity(
                        horizontal: -4,
                        vertical: -4,
                      ),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    SizedBox(width: 5),
                    Text(
                      AppStrings.rememberMe,
                      style: AppStyles.secondaryTextStyle,
                    ),
                  ],
                ),

                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.forgotPasswordScreen);
                  },
                  child: Text(
                    AppStrings.forgotPassword,
                    style: AppStyles.secondaryTextStyle.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 27),
          MainButton(title: AppStrings.logIn, onPressed: () {}),
        ],
      ),
    );
  }
}
