import 'package:e_commerce_app/features/auth/presentation/new_password/widgets/new_password_body.dart';
import 'package:flutter/material.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NewPasswordBody(),
    );
  }
}
