import 'package:e_commerce_app/features/auth/presentation/components/back_button_widget.dart';
import 'package:e_commerce_app/features/auth/presentation/verify_email/widgets/verfiy_email_form.dart';
import 'package:flutter/material.dart';

class VerifyEmailBody extends StatelessWidget {
  const VerifyEmailBody({super.key});

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
            SizedBox(height: 30),
            VerfiyEmailForm(),
          ],
        ),
      ),
    );
  }
}
