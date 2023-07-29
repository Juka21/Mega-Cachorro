import 'package:flutter/material.dart';
import 'package:megamenu/screens/widget/food_detail.dart';
import 'package:megamenu/screens/widget/food_img.dart';
import '../../Home/widgets/custom_app_bar.dart';
import '../../constants/colors.dart';
import '../../models/food.dart';

class DetailPage extends StatelessWidget {
  final Food food;

  DetailPage(this.food);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBarNew(
              leftIcon: Icons.arrow_back_ios_new_outlined,
              rightIcon: Icons.favorite_border_outlined,
              onLeftIconTap: () {
                Navigator.pop(context);
              },
              onRightTap: () {
              },
              isFavorite: false,
              leftCallBack: () {},
            ),
            FoodImg(food),
            FoodDetail(food),
          ],
        ),
      ),
    );
  }
}
