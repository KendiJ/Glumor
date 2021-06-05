import 'package:flutter/material.dart';
import 'package:glumor/app/app_decoration.dart';

// ignore: camel_case_types
typedef voidFunction = void Function();

class CustomButton extends StatelessWidget {
  final Text text;
  final double height;
  final double width;
  final voidFunction onPressed;
  final RoundedRectangleBorder shape;

  /// This button has a default [height] and [width] of 50 and 400 respectively.
  CustomButton({
    required this.text,
    required this.onPressed,
    required this.height,
    required this.width,
    required this.shape,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: AppDecorations.buttonStyle,
      child: TextButton(
        onPressed: onPressed,
        child: text,
        // child: shape,
      ),
    );
  }
}