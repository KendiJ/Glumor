import 'package:flutter/material.dart';
import 'package:glumor/screens/auth/forgot_pass.dart';
import 'package:glumor/screens/auth/sign_in.dart';
import 'package:glumor/screens/auth/sign_up.dart';
import 'package:glumor/screens/pages/home.dart';
import 'package:glumor/screens/pages/profile.dart';
import 'package:glumor/screens/pages/reminder.dart';
import 'package:glumor/screens/widgets/bottom_navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      initialRoute: SignIn.id,
        routes: {
          SignUp.id: (context) => SignUp(),
          SignIn.id: (context) => SignIn(),
          BottomNavBar.id: (context) => BottomNavBar(),
          Home.id: (context) => Home(),
          Reminder.id: (context) => Reminder(),
          ForgotPassword.id: (context) => ForgotPassword(),
          // Transactions.id: (context) => Transactions(),
          Profile.id: (context) => Profile(),
        },
    );
  }
}

