import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppDecorations {
  static final textForm = InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(
        color: AppColors.primaryColor,
        width: 2.0,
      ),
    ),
    labelText: 'Enter Input',
    hintText: 'Enter Input',
  );

  static const buttonStyle = BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(20),
    ),
    color: AppColors.primaryColor,
  );
}