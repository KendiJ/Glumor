import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:glumor/app/app_colors.dart';
import 'package:glumor/app/app_decoration.dart';
import 'package:glumor/app/app_strings.dart';
import 'package:glumor/app/app_text_styles.dart';
import 'package:glumor/screens/auth/forgot_pass.dart';
import 'package:glumor/screens/auth/sign_up.dart';
import 'package:glumor/screens/pages/home.dart';
import 'package:glumor/screens/widgets/buttons.dart';
import 'package:glumor/screens/widgets/spacer.dart';
import 'package:glumor/services/auth.dart';

class SignIn extends StatefulWidget {
  static const id = 'sign_in';
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),
        child: ListView(
          children: [
            Height30(),
            SingleChildScrollView(
              child: Container(
                child: Text(
                  AppStrings.signIn.toUpperCase(),
                  style: AppTextStyle.textSize30
                      .copyWith(color: AppColors.primaryColor),
                ),
              ),
            ),
            Height30(),
            Text(
              AppStrings.signInNote,
              style: AppTextStyle.textSize15.copyWith(
                color: AppColors.textColor,
              ),
            ),
            Height30(),
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
                hintText: AppStrings.newPassword,
                labelText: AppStrings.password,
              ),
            ),
            Height20(),
            RichText(
              textAlign: TextAlign.end,
              text: TextSpan(
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: AppStrings.forgetPin,
                    style: AppTextStyle.textSize15.copyWith(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushNamed(context, ForgotPassword.id);
                      },
                  ),
                ],
              ),
            ),
            Height30(),
            CustomButton(
              text: Text(
                AppStrings.signIn.toUpperCase(),
                style: AppTextStyle.textSize20.copyWith(
                  color: Colors.white,
                ),
              ),
              onPressed: () => Navigator.pushNamed(context, Home.id), height: 20, width: 30, shape: RoundedRectangleBorder(),
            ),
            Height10(),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _signInButton(),
              ],
            ),
            Height40(),
            RichText(
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

_signInButton() {
  return OutlinedButton(
    // splashColor: Colors.grey,
    onPressed: () {
      signInWithGoogle().then((result) {  
        if (result != null) {}
      });
    },
    // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
    // highlightElevation: 0,
    // borderSide: BorderSide(color: Colors.grey),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(image: AssetImage("assets/logo/google_logo.png"), height: 25.0),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Sign in with Google',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
    ),
  );
}