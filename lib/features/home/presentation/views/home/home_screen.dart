import 'package:e_commerce_app/features/auth/presentation/components/logo_widget.dart';
import 'package:e_commerce_app/features/home/presentation/views/home/widgets/bottom_nav_bar.dart';
import 'package:e_commerce_app/features/home/presentation/views/home/widgets/catogries_list_view.dart';
import 'package:e_commerce_app/features/home/presentation/views/home/widgets/home_banner.dart';
import 'package:e_commerce_app/features/home/presentation/views/home/widgets/most_popular_widget.dart';
import 'package:e_commerce_app/features/home/presentation/views/home/widgets/resturant_listview.dart';
import 'package:e_commerce_app/features/home/presentation/views/home/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              LogoWidget(),
              SizedBox(height: 31),
              SearchBarWidget(),
              SizedBox(height: 24),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      HomeBanner(),
                      SizedBox(height: 24),
                      CatogriesListView(),
                      SizedBox(height: 24),
                      MostPopularWidget(),
                      SizedBox(height: 16),
                      ResturantListview()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
