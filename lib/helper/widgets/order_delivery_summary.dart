import 'package:flutter/cupertino.dart';
import 'package:store_app/core/utils/app_colors.dart';

Widget rowOfOrder(double num , title){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical:5),
    child: Row(
      children: [
        Text(title,style: TextStyle(color: AppColors.primary,fontSize: 15),),
        Spacer(),
        Text('${num.toStringAsFixed(2)}\$',style: TextStyle(color: AppColors.black,fontSize: 25),),
      ],
    ),
  );
}