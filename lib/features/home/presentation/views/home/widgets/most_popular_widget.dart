import 'package:e_commerce_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class MostPopularWidget extends StatelessWidget {
  const MostPopularWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Most Popular", style: AppStyles.primaryTextStyle),
          Row(
            children: [
              Text("See More", style: AppStyles.secondaryTextStyle.copyWith(fontSize: 12)),
              SizedBox(width: 5,),
              Icon(Icons.arrow_forward_ios,size: 12.51,),
            ],
          ),
        ],
      ),
    );
  }
}
