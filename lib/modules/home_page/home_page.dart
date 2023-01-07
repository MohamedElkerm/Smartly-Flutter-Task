import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/utils/constants.dart';
import 'package:store_app/helper/widgets/app_bar.dart';
import 'package:store_app/helper/widgets/product_card.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/modules/home_page/home_page_cubit.dart';
import 'package:store_app/modules/product_screen/product_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HomePageCubit()..getAllProducts(),
      child: BlocConsumer<HomePageCubit, HomePageState>(
        listener: (context, state) {},
        builder: (context, state) {
          var myBloc = BlocProvider.of<HomePageCubit>(context);
          return Scaffold(
            backgroundColor: isDark?Colors.black:Color(0xffEAEAE8),
            appBar: myAppBar(context , myBloc.myProducts,(){
              setState(() {
                isDark = !isDark;
              });
            }),
            body: Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 50),
              child: FutureBuilder<List<ProductModel>>(
                future: myBloc.getAllProducts(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      clipBehavior: Clip.none,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, item) {
                        return GestureDetector(
                          child: productCard(snapshot.data![item], context, () {
                            myBloc.addProductToCart(snapshot.data![item]);
                          }),
                          onTap: () {
                            myBloc.productModel = snapshot.data![item];
                            Navigator.pushNamed(
                              context,
                              ProductScreen.id,
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
        },
      ),
    );
  }
}
