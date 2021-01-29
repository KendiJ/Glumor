import 'package:flutter/material.dart';
import 'package:glumor/app/app_bar.dart';
import 'package:glumor/app/app_colors.dart';
import 'package:glumor/app/app_strings.dart';
import 'package:glumor/app/app_text_styles.dart';
import 'package:glumor/screens/widgets/bottom_navbar.dart';
import 'package:glumor/screens/widgets/spacer.dart';

class Profile extends StatefulWidget {
  static const id = "profile";
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: AppBarAction.appBarAction,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            Height5(),
            Text(
              AppStrings.profile,
              style: AppTextStyle.textSize30.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: 4,
      ),
    );
  }
}