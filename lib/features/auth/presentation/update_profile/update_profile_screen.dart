import 'package:e_commerce_app/features/auth/presentation/update_profile/widgets/appbar_update_profile.dart';
import 'package:e_commerce_app/features/auth/presentation/update_profile/widgets/update_profile_form.dart';
import 'package:flutter/material.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarUpdateProfile(),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child:UpdateProfileForm(),
        ),
      ),
    );
  }
}
