import 'package:flutter/material.dart';
import 'package:megamenu/constants/colors.dart';

class CustomAppBar extends StatelessWidget {

  final IconData? rightIcon;
  final IconData? leftIcon;
  final Function()? onLeftIconTap;
  final String? leftIconText;

  CustomAppBar({required this.rightIcon, required this.leftIcon, required this.leftIconText, required this.onLeftIconTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: onLeftIconTap,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                  child: Icon(
                    leftIcon,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 4),
                Text(
                  leftIconText ?? '',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kPrimary),
                ),
              ],
            ),
          ),
          _buildIcon(rightIcon),
        ],
      ),
    );
  }

  Widget _buildIcon(IconData? icon) {
    if (icon != null) {
      return Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: Icon(icon),
      );
    }
    else{
      return Container();
    }
  }
}

class CustomAppBarNew extends StatelessWidget{

  final IconData? leftIcon;
  final IconData? rightIcon;
  final Function()? onLeftIconTap;
  final Function()? leftCallBack;
  final Function()? onRightTap;
  final bool isFavorite;

  CustomAppBarNew({
    required this.leftIcon,
    required this.rightIcon,
    required this.onLeftIconTap,
    required this.leftCallBack,
    required this.onRightTap,
    required this.isFavorite,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              if (onLeftIconTap != null) {
                onLeftIconTap!();
              }
              else if (leftCallBack != null) {
                leftCallBack!();
              }
              else {
                Navigator.pushNamed(context, '/');
              }
            },
            child: _buildIcon(leftIcon),
          ),
          GestureDetector(
            onTap: () {
              if (onRightTap != null) {
                onRightTap!();
              }
            },
            child: _buildIcon(rightIcon),
          ),
        ],
      ),
    );
  }
  Widget _buildIcon(IconData? icon) {
    if (icon != null) {
      return Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: Icon(icon),
      );
    }
    else {
      return Container();
    }
  }
}
