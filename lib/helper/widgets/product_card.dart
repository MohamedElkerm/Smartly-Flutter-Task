import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';

Widget productCard(ProductModel productModel, context, fun) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5.0,
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    productModel.image.toString(),
                    height: 150,
                    width: 150,
                  ),
                )),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        maxRadius: 35,
                        child: Text('${productModel.price.toString()} \$'),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: fun,
                          icon: const Icon(Icons.add_shopping_cart_outlined))
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
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

Widget productFavorite(ProductModel productModel, context,fun) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5.0,
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    productModel.image.toString(),
                    height: 150,
                    width: 150,
                  ),
                )),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        maxRadius: 35,
                        child: Text('${productModel.price.toString()} \$'),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: fun,
                          icon: const Icon(Icons.remove_circle_outline))
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
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
