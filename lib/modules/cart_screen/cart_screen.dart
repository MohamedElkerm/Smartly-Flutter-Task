import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/helper/widgets/product_card.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/modules/cart_screen/cart_screen_cubit.dart';
import 'package:store_app/modules/check_out_screen/check_out_screen.dart';

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
    return BlocProvider(
      create: (context) => CartScreenCubit(),
      child: BlocConsumer<CartScreenCubit, CartScreenState>(
        listener: (context, state) {},
        builder: (context, state) {
          var myBloc = BlocProvider.of<CartScreenCubit>(context);
          myBloc.myProductsBloc = myProducts;
          return Scaffold(
            appBar: AppBar(),
            body: ConditionalBuilder(
              condition: myProducts.isEmpty,
              builder: (context) => const Center(
                child: CircularProgressIndicator(),
              ),
              fallback: (context) {
                return ListView.builder(
                  itemCount: myProducts.length,
                  itemBuilder: (context, item) {
                    return productFavorite(myProducts[item], context, () {
                      setState(() {
                        myBloc.minusProduct(myProducts[item].price);
                        myProducts.removeAt(item);
                        myBloc.myProductsBloc = myProducts;
                      });
                    });
                  },
                );
              },
            ),
            floatingActionButton: ConditionalBuilder(
              condition: myProducts.isEmpty,
              builder: (context) => FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.error_outline),
              ),
              fallback: (context) => FloatingActionButton(
                onPressed: () {
                  myBloc.sum = 0;
                  myBloc.sumOfProducts();
                  Navigator.pushNamed(
                    context,
                    CheckOutScreen.id,
                    arguments: myBloc.sum,
                  );
                },
                child: const Icon(Icons.shopping_cart_checkout_outlined),
              ),
            ),
          );
        },
      ),
    );
  }
}
