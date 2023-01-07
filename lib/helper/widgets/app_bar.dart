import 'package:flutter/material.dart';
import 'package:store_app/core/utils/app_strings_en.dart';

PreferredSizeWidget myAppBar(){
  return AppBar(
    elevation: 0.0,
    title:  Text(
      AppStringsEn.appName,
    ),
    centerTitle: true,
    actions: [
      IconButton(
          onPressed: () {},
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