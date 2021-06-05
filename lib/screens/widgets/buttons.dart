import 'package:flutter/material.dart';
import 'package:glumor/app/app_decoration.dart';

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
      width: width ?? 400,
      height: height ?? 50,
      decoration: AppDecorations.buttonStyle,
      child: FlatButton(
        onPressed: onPressed,
        child: text,
        shape: shape,
      ),
    );
  }
}