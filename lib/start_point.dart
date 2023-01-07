import 'package:flutter/material.dart';
import 'package:store_app/config/themes/app_theme_dark_mode.dart';
import 'package:store_app/config/themes/app_theme_light_mode.dart';
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
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: appLightTheme(),
      darkTheme:appDarkTheme() ,
    );
  }
}
