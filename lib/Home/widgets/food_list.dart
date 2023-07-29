import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../models/restaurant.dart';

class FoodList extends StatelessWidget {
  final int selected;
  final Function callback;
  final Restaurant restaurant;

  FoodList(this.selected, this.callback, this.restaurant);

  @override
  Widget build(BuildContext context) {
    final categories = restaurant.menu.keys.toList();
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 30),
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 25),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => callback(index),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: selected == index ? kPrimary : Colors.white,
            ),
            child: Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        separatorBuilder: (_, index) => SizedBox(width: 20),
        itemCount: categories.length,
      ),
    );
  }
}
