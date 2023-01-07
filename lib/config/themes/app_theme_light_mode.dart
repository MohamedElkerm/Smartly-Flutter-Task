
import 'package:flutter/material.dart';
import 'package:store_app/core/utils/app_colors.dart';

ThemeData appLightTheme(){
  return ThemeData(
    appBarTheme:const AppBarTheme(
        centerTitle: true,
        backgroundColor: Color(0xffEAEAE8),
        elevation: 0,
        titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold
        )
    ),
    primarySwatch: AppColors.primary,
    primaryColor: AppColors.primary,
    hintColor:  AppColors.hint,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Color(0xffEAEAE8),
    textTheme:const TextTheme(
      button: TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
    ),

  );
}