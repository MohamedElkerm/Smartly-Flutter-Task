import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';

Widget productCard(ProductModel productModel, context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5.0,
        child: Row(
          children: [
            Expanded(flex: 1,child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(productModel.image.toString(),height: 150,width: 150,),
            )),
            const SizedBox(width: 10,),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  CircleAvatar(maxRadius: 35,child: Text('${productModel.price.toString()} \$')),
                  const SizedBox(height: 25,),
                  Text(productModel.title.toString()),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
