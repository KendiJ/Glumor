import 'package:flutter/material.dart';

class AppBarAction {
  static List<Widget> appBarAction = [
    Builder(
      builder: (context) => Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // IconButton(
            //   icon: Icon(
            //     Icons.qr_code,
            //     color: AppColors.primaryColor,
            //     size: 40,
            //   ),
            //   onPressed: (){},
            // ),
            // IconButton(
            //   icon: Icon(
            //     Icons.help_center,
            //     color: AppColors.primaryColor,
            //     size: 40,
            //   ),
            //   onPressed: () {},
            // ),
          ],
        ),
      ),
    ),
  ];
}