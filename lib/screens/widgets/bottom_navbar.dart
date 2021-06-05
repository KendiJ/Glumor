import 'package:flutter/material.dart';
import 'package:glumor/app/app_colors.dart';
import 'package:glumor/app/app_strings.dart';
import 'package:glumor/screens/pages/home.dart';
import 'package:glumor/screens/pages/profile.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatefulWidget {
  static const id = 'bottom_nav_bar';
  final int selectedIndex;
  BottomNavBar({
    required Key key,
    required this.selectedIndex,
  }) : super(key: key);
  
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.white.withOpacity(.1),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
        child: GNav(
          gap: 10,
          activeColor: AppColors.primaryColor,
          iconSize: 25,
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
          duration: Duration(milliseconds: 300),
          tabBackgroundColor: Colors.white,
          tabs: [
            GButton(
              icon: Icons.home,
              iconColor: Colors.white,
              text: AppStrings.home,
            ),
            GButton(
              icon: Icons.account_balance_wallet,
              iconColor: Colors.white,
              text: AppStrings.wallet,
            ),
            GButton(
              icon: Icons.notifications_none,
              iconColor: Colors.white,
              text: AppStrings.notification,
            ),
            GButton(
              icon: Icons.receipt,
              iconColor: Colors.white,
              text: AppStrings.transactions,
            ),
            GButton(
              icon: Icons.person,
              iconColor: Colors.white,
              text: AppStrings.profile,
            ),
          ],
          selectedIndex: widget.selectedIndex,
          onTabChange: (index) {
            changeTab(index);
          },
        ),
      ),
    );
  }

  void goTo(String screen) {
    Navigator.pushNamed(context, screen);
  }

  changeTab(int index) {
    switch (index) {
      case 0:
        goTo(Home.id);
        break;
      // case 1:
      //   goTo(Wallet.id);
      //   break;
      // case 2:
      //   goTo(Notifications.id);
      //   break;
      // case 3:
      //   goTo(Transactions.id);
      //   break;
      case 4:
        goTo(Profile.id);
        break;
      default:
    }
  }
}