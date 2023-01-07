import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_app/core/utils/app_colors.dart';
import 'package:store_app/core/utils/constants.dart';

Widget rowOfOrder(double num , title){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical:5),
    child: Row(
      children: [
        Text(title,style: TextStyle(color: isDark ?AppColors.primary :AppColors.primary,fontSize: 15),),
        Spacer(),
        Text('${num.toStringAsFixed(2)}\$',style: TextStyle(color: isDark ?Colors.white :Colors.black,fontSize: 25),),
      ],
    ),
  );
}