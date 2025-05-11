import 'package:e_commerce_app/features/auth/presentation/verify_email/widgets/verify_email_body.dart';
import 'package:flutter/material.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VerifyEmailBody(),
    );
  }
}
