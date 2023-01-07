import 'package:flutter/material.dart';
import 'package:store_app/core/utils/app_strings_en.dart';
import 'package:store_app/core/utils/constants.dart';
import 'package:store_app/modules/cart_screen/cart_screen.dart';

PreferredSizeWidget myAppBar(context, myCart, funIsDark) {
  return AppBar(
    backgroundColor: isDark ? Colors.black :Color(0xffEAEAE8) ,
    leading: IconButton(
        onPressed: funIsDark,
        icon: isDark
            ? const Icon(Icons.light_mode)
            : const Icon(Icons.dark_mode_rounded),
        color: isDark ? Colors.white : Colors.black),
    elevation: 0.0,
    title: Text(
      AppStringsEn.appName,
      style: TextStyle(color: isDark ? Colors.white : Colors.black),
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
          icon: Icon(
            Icons.shopping_cart,
            color: isDark ? Colors.white : Colors.black,
          ))
    ],
  );
}

PreferredSizeWidget myAppBarWithBackArrow() {
  return AppBar(
    elevation: 0.0,
    backgroundColor: Colors.transparent,
  );
}
