import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:glumor/app/app_colors.dart';
import 'package:glumor/app/app_decoration.dart';
import 'package:glumor/app/app_strings.dart';
import 'package:glumor/app/app_text_styles.dart';
import 'package:glumor/screens/auth/sign_up.dart';
import 'package:glumor/screens/widgets/buttons.dart';
import 'package:glumor/screens/widgets/spacer.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                  AppStrings.retrivePassword.toUpperCase(),
                  style: AppTextStyle.textSize30
                      .copyWith(color: AppColors.primaryColor),
                ),
              ),
            ),
            Height30(),
            Text(
              AppStrings.retriveNote,
              style: AppTextStyle.textSize15.copyWith(
                color: AppColors.textColor,
              ),
            ),
            Height30(),
            TextField(
              obscureText: true,
              decoration: AppDecorations.textForm.copyWith(
                hintText: AppStrings.phoneNumber,
                labelText: AppStrings.phoneNumber,
              ),
            ),
            Height30(),
            CustomButton(
              text: Text(
                AppStrings.retrivePassword.toUpperCase(),
                style: AppTextStyle.textSize20.copyWith(color: Colors.white),
              ),
              onPressed: () {},
            ),
            Height30(),RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: AppStrings.dontHaveAnAccount + ' ',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: AppStrings.signUp,
                    style: TextStyle(
                      fontSize: 15,
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushNamed(context, SignUp.id);
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