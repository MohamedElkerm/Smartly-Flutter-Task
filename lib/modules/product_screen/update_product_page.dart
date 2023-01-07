import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';

class UpdateProductPage extends StatelessWidget {
  const UpdateProductPage({super.key});

  static String id = 'update';

  @override
  Widget build(BuildContext context) {
    ProductModel productModel =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          'Update Product',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ))
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 250,
            child: Image.network(
              productModel.image,
              height: 50,
              width: 50,
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: Colors.grey),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Text(
                            productModel.title.toString(),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: CircleAvatar(
                            maxRadius: 40,
                            child: Text(
                              '${productModel.price.toString()}\$',
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SingleChildScrollView(
                          child: Text(
                        productModel.description.toString(),
                        style: const TextStyle(color: Colors.grey),
                      )),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
