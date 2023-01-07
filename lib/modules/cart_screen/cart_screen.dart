import 'package:flutter/material.dart';
import 'package:store_app/helper/widgets/product_card.dart';
import 'package:store_app/models/product_model.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);
  static String id = 'CartScreen';

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    List<ProductModel> myProducts =
        ModalRoute.of(context)!.settings.arguments as List<ProductModel>;
    if (myProducts.isEmpty) {
      return  Scaffold(
        appBar: AppBar(),
        body:const Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
            itemCount: myProducts.length,
            itemBuilder: (context, item) {
              return productFavorite(myProducts[item], context,(){
                setState(() {
                  myProducts.removeAt(item);
                });
              });
            }),
      );
    }
  }
}
