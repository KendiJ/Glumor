import 'package:flutter/material.dart';
import 'package:glumor/app/app_bar.dart';
import 'package:glumor/app/app_colors.dart';
import 'package:glumor/app/app_strings.dart';
import 'package:glumor/app/app_text_styles.dart';
import 'package:glumor/screens/widgets/bottom_navbar.dart';
import 'package:glumor/screens/widgets/spacer.dart';

class HelpDesk extends StatefulWidget {
  @override
  _HelpDeskState createState() => _HelpDeskState();
}

class _HelpDeskState extends State<HelpDesk> {
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
              AppStrings.helplineAnd,
              style: AppTextStyle.textSize28.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
            Height20(),
            Text(
              AppStrings.helplineNote,
              style: AppTextStyle.textSize15.copyWith(
                color: AppColors.textColor,
              ),
            ),
            Height20(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     AppCard.about,
                  //     AppCard.emailUs,
                  //   ],
                  // ),
                  // Height20(),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     AppCard.talkWith,
                  //     AppCard.chatWith,
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavBar(),
    );
  }
}