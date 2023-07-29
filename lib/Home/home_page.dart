import 'package:flutter/material.dart';
import 'package:megamenu/Home/widgets/custom_app_bar.dart';
import 'package:megamenu/Home/widgets/food_list.dart';
import 'package:megamenu/Home/widgets/food_list_view.dart';
import 'package:megamenu/Home/widgets/restaurant_info.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants/colors.dart';
import '../models/restaurant.dart';
import '../screens/favorite_food.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var selected = 0;
  final pageController = PageController();
  final restaurant = Restaurant.generateRestaurant();
  void _goToFavoriteFood() {
    Navigator.push(context, MaterialPageRoute(builder: (_) => FavoriteFood()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
              rightIcon: Icons.search,
              leftIcon: Icons.favorite,
              leftIconText: 'Meus Favritos',
              onLeftIconTap: _goToFavoriteFood,
          ),
          RestaurantInfo(),
          FoodList(
              selected,
              (int index){
                setState(() {
                });
                pageController.jumpToPage(index);
              },
              restaurant),
          Expanded(
              child: FoodListView(
                selected,
                  (int index) {
                  setState(() {
                    selected = index;
                  });
                  },
                pageController,
                restaurant,
              ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            height: 60,
            child: SmoothPageIndicator(
              controller: pageController,
              count: restaurant.menu.length,
              effect: ExpandingDotsEffect(
                dotColor: Colors.grey,
                dotWidth: 12,
                dotHeight: 12,
                activeDotColor: kPrimary,
              ),
              onDotClicked: (index) => pageController.jumpToPage(index),
            ),
          ),
        ],
      ),
    );
  }
}
