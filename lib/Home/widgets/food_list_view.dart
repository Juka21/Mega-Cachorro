import 'package:flutter/material.dart';
import 'package:megamenu/Home/widgets/food_item.dart';

import '../../models/restaurant.dart';
import '../../screens/widget/detail.dart';

class FoodListView extends StatelessWidget {
  final int selected;
  final Function callBack;
  final PageController pageController;
  final Restaurant restaurant;

  FoodListView(
      this.selected,
      this.callBack,
      this.pageController,
      this.restaurant,
      );

  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callBack(index),
        children: category.map((e) => ListView.separated(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    restaurant.menu[category[selected]]![index],
                  ),
                ),
              );
            },
            child: FoodItem(
              restaurant.menu[category[selected]]![index],
            ),
          ),
          separatorBuilder: (_, index) => SizedBox(height: 15),
          itemCount: restaurant.menu[category[selected]]!.length,
        )).toList(),
      ),
    );
  }
}