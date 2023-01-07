import 'package:flutter/material.dart';
import 'package:store_app/core/utils/app_strings_en.dart';
import 'package:store_app/modules/cart_screen/cart_screen.dart';

PreferredSizeWidget myAppBar(context,myCart){
  return AppBar(
    elevation: 0.0,
    title:  Text(
      AppStringsEn.appName,
    ),
    centerTitle: true,
    actions: [
      IconButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              CartScreen.id,
              arguments: myCart,
            );
          },
          icon: const Icon(
            Icons.shopping_cart,
            color: Colors.black,
          ))
    ],
  );
}

PreferredSizeWidget myAppBarWithBackArrow(){
  return AppBar(
    elevation: 0.0,
    backgroundColor: Colors.transparent,
  );
}