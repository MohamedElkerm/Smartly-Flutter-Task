import 'package:flutter/cupertino.dart';
import 'package:store_app/core/utils/app_colors.dart';

Widget paymentComponents(src){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color:AppColors.primary,width: 5)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(src),
        ),
      ),
      //TODO: here complete with the payment method
      onTap: (){},
    ),
  );
}