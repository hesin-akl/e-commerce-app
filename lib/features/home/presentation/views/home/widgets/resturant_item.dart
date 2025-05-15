import 'package:e_commerce_app/core/themeing/app_color.dart';
import 'package:e_commerce_app/core/themeing/app_styles.dart';
import 'package:flutter/material.dart';

class ResturantItem extends StatelessWidget {
  final String img;
  final String name;
  final String rating;
  final String openOrClose;
  final String time;
  final String deliveryTime;

  const ResturantItem({
    super.key,
    required this.img,
    required this.name,
    required this.rating,
    required this.openOrClose,
    required this.time,
    required this.deliveryTime,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        width: 172,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.primary),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: 108,
                    width: 168,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage(img),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 2,
                    top: 4,
                    child: Container(
                      height: 25,
                      width: 25,
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 10,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: AppStyles.primaryTextStyle.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              rating,
                              style: AppStyles.primaryTextStyle.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                            Icon(Icons.star, color: Colors.black, size: 10),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          openOrClose,
                          style: AppStyles.primaryTextStyle.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                            color: Colors.green,
                          ),
                        ),
                        Text(
                          time,
                          style: AppStyles.primaryTextStyle.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery Time",
                          style: AppStyles.primaryTextStyle.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "$deliveryTime min ",
                              style: AppStyles.primaryTextStyle.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                            Icon(
                              Icons.hourglass_full,
                              color: Colors.black,
                              size: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
