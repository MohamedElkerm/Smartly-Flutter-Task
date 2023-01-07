
import 'package:flutter/material.dart';
import 'package:store_app/core/utils/app_colors.dart';

ThemeData appDarkTheme(){
  return ThemeData(
    appBarTheme:const AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
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
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.white,
    textTheme:const TextTheme(
      button: TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
    ),

  );
}