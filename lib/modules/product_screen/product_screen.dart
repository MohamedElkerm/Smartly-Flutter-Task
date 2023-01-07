import 'package:flutter/material.dart';
import 'package:store_app/core/utils/app_colors.dart';
import 'package:store_app/core/utils/constants.dart';
import 'package:store_app/models/product_model.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  static String id = 'update';

  @override
  Widget build(BuildContext context) {
    ProductModel productModel =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Scaffold(
      backgroundColor: isDark?Colors.black:Color(0xffEAEAE8),
      appBar: AppBar(
        backgroundColor: isDark ? Colors.black :Color(0xffEAEAE8) ,
          leading: IconButton(
              onPressed: (){Navigator.pop(context);},
              icon: Icon(Icons.arrow_back),
              color: isDark ? Colors.white : Colors.black)
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: isDark ?Colors.white :Colors.white ,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColors.primary, width: 3)),
                  width: double.infinity,
                  height: 250,
                  child: Image.network(
                    productModel.image,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: isDark ?Colors.white :Colors.white,
                    border: Border.all(width: 3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                productModel.title.toString(),
                              ),
                            ),
                            CircleAvatar(
                              maxRadius: 30,
                              child: Text(
                                '${productModel.price.toString()}\$',
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            productModel.description.toString(),
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
