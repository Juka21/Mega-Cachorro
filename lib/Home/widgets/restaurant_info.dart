import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../models/restaurant.dart';

class RestaurantInfo extends StatelessWidget {
  final restaurant = Restaurant.generateRestaurant();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    restaurant.name,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      restaurant.waitTime,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(restaurant.logoUrl, width: 80),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Flexible(
                child: Text(
                  '"${restaurant.desc}"',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.star_outlined,
                color: kPrimary,
              ),
              SizedBox(width: 5),
              Text(
                '${restaurant.score}',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

