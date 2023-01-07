import 'package:flutter/material.dart';
import 'package:store_app/config/themes/app_theme_dark_mode.dart';
import 'package:store_app/config/themes/app_theme_light_mode.dart';
import 'package:store_app/modules/cart_screen/cart_screen.dart';
import 'package:store_app/modules/check_out_screen/check_out_screen.dart';
import 'package:store_app/modules/home_page/home_page.dart';
import 'package:store_app/modules/product_screen/product_screen.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomePage.id,
      routes: {
        HomePage.id : (context)=>const HomePage(),
        ProductScreen.id : (context)=>const ProductScreen(),
        CartScreen.id : (context)=>const CartScreen(),
        CheckOutScreen.id : (context)=>const CheckOutScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: appLightTheme(),
      //dark mode with the device mode
      // darkTheme:appDarkTheme() ,
    );
  }
}
