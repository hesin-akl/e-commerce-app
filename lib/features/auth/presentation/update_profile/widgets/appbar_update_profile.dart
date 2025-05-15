import 'package:e_commerce_app/core/themeing/app_strings.dart';
import 'package:e_commerce_app/core/themeing/app_styles.dart';
import 'package:flutter/material.dart';

class AppbarUpdateProfile extends StatelessWidget
    implements PreferredSizeWidget {
  const AppbarUpdateProfile({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight); //
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        AppStrings.updateProfile,
        style: AppStyles.primaryTextStyle.copyWith(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios),
      ),
    );
  }
}
