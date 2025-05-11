import 'package:e_commerce_app/features/auth/presentation/components/back_button_widget.dart';
import 'package:e_commerce_app/features/auth/presentation/new_password/widgets/new_password_form.dart';
import 'package:flutter/material.dart';

class NewPasswordBody extends StatelessWidget {
  const NewPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackButtonWidget(),
              SizedBox(height: 48),
              NewPasswordForm()
            ],
          ),
        ),
      );
  }
}