import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:glumor/app/app_colors.dart';
import 'package:glumor/app/app_decoration.dart';
import 'package:glumor/app/app_strings.dart';
import 'package:glumor/app/app_text_styles.dart';
import 'package:glumor/screens/auth/sign_in.dart';
import 'package:glumor/screens/pages/home.dart';
import 'package:glumor/screens/widgets/buttons.dart';
import 'package:glumor/screens/widgets/spacer.dart';

class SignUp extends StatefulWidget {
  static const id = 'sign_up';
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),
        child: ListView(
          children: [
            SingleChildScrollView(
              child: Container(
                child: Text(
                  AppStrings.signUp.toUpperCase(),
                  style: AppTextStyle.textSize30
                      .copyWith(color: AppColors.primaryColor),
                ),
              ),
            ),
            Height30(),
            Text(
              AppStrings.signUpNote,
              style: AppTextStyle.textSize15.copyWith(
                color: AppColors.textColor,
              ),
            ),
            Height30(),
            TextField(
              obscureText: true,
              decoration: AppDecorations.textForm.copyWith(
                hintText: AppStrings.fullName,
                labelText: AppStrings.fullName,
              ),
            ),
            Height20(),
            TextField(
              obscureText: true,
              decoration: AppDecorations.textForm.copyWith(
                hintText: AppStrings.emailAddress,
                labelText: AppStrings.emailAddress,
              ),
            ),
            Height20(),
            TextField(
              obscureText: true,
              decoration: AppDecorations.textForm.copyWith(
                hintText: AppStrings.phoneNumber,
                labelText: AppStrings.phoneNumber,
              ),
            ),
            Height20(),
            TextField(
              obscureText: true,
              decoration: AppDecorations.textForm.copyWith(
                hintText: AppStrings.newPassword,
                labelText: AppStrings.newPassword,
              ),
            ),
            Height20(),
            TextField(
              obscureText: true,
              decoration: AppDecorations.textForm.copyWith(
                hintText: AppStrings.confirmPassword,
                labelText: AppStrings.confirmPassword,
              ),
            ),
            Height30(),
            CustomButton(
              text: Text(
                AppStrings.signUp.toUpperCase(),
                style: AppTextStyle.textSize20.copyWith(
                  color: Colors.white,
                ),
              ),
              onPressed: () => Navigator.pushNamed(context, Home.id),
            ),
            Height40(),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: AppStrings.alreadyHaveAnAcount + ' ',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: AppStrings.signIn,
                    style: TextStyle(
                      fontSize: 15,
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushNamed(context, SignIn.id);
                      },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}