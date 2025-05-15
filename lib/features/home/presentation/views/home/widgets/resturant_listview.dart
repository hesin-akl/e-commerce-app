import 'package:e_commerce_app/features/home/data/resturant_data.dart';
import 'package:e_commerce_app/features/home/presentation/views/home/widgets/resturant_item.dart';
import 'package:flutter/material.dart';

class ResturantListview extends StatelessWidget {
  const ResturantListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          final item = resturantData[index];
          return ResturantItem(
            img: item.image,
            name: item.resturantName,
            rating: item.rating,
            openOrClose: item.openOrClose,
            time: item.time,
            deliveryTime: item.deliveryTime,
          );
        },
        itemCount: resturantData.length,
      ),
    );
  }
}
