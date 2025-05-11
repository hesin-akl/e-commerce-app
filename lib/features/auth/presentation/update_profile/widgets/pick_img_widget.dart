import 'dart:io';

import 'package:e_commerce_app/core/constants/app_assets.dart';
import 'package:e_commerce_app/core/constants/app_color.dart';
import 'package:e_commerce_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PickImgWidget extends StatefulWidget {
  const PickImgWidget({super.key});

  @override
  State<PickImgWidget> createState() => _PickImgWidgetState();
}

class _PickImgWidgetState extends State<PickImgWidget> {
  final ImagePicker picker = ImagePicker();
  File? imageFile;

  showPickImageDialog() {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text(
              'Pick Image',
              style: AppStyles.primaryTextStyle.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
                fontSize: 20,
              ),
            ),
            actions: [
              TextButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                  pickImage(ImageSource.camera);
                },
                label: Text('Camera'),
                icon: const Icon(Icons.camera),
              ),
              TextButton.icon(
                label: const Text('Gallery'),
                icon: const Icon(Icons.image),
                onPressed: () {
                  Navigator.pop(context);
                  pickImage(ImageSource.gallery);
                },
              ),
            ],
          ),
    );
  }

  pickImage(ImageSource source) async {
    final pickedImage = await picker.pickImage(source: source);
    if (pickedImage != null) {
      setState(() {
        imageFile = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 74,
          backgroundColor: AppColors.primary,
          child: CircleAvatar(
            radius: 70,
            backgroundImage:
                imageFile != null
                    ? FileImage(imageFile!)
                    : AssetImage(AppAssets.defualtUser) as ImageProvider,
          ),
        ),
        Positioned(
          bottom: 8,
          left: 8,
          child: InkWell(
            onTap: () {
              showPickImageDialog();
            },
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(Icons.add, color: Colors.white, size: 25),
            ),
          ),
        ),
      ],
    );
  }
}
