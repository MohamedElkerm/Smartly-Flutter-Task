import 'package:flutter/material.dart';
import 'package:store_app/helper/widgets/product_cart.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/modules/product_screen/update_product_page.dart';
import 'package:store_app/services/get_all_products.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          'Trendy',
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
      body: Padding(
        padding: const EdgeInsets.only(top: 50, bottom: 50),
        child: FutureBuilder<List<ProductModel>>(
          future: AllProductServices().getAllProducts(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return GridView.builder(
                clipBehavior: Clip.none,
                itemCount: snapshot.data!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.1,
                    crossAxisSpacing: 50,
                    mainAxisSpacing: 60),
                itemBuilder: (context, item) {
                  return GestureDetector(
                    child: productCard(snapshot.data![item], context),
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        UpdateProductPage.id,
                        arguments: snapshot.data![item],
                      );
                    },
                  );
                },
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
