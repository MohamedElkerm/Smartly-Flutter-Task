import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:store_app/helper/remote/api.dart';
import 'package:store_app/models/product_model.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageInitial());
  ProductModel? productModel ;

  Future<List<ProductModel>>? getAllProducts() async {
    List<ProductModel> productList = [];
    await Api().get(url: 'https://fakestoreapi.com/products').then((value) {
      for (int i = 0; i < value.length; ++i) {
        productList.add(ProductModel.fromJson(value[i]));
      }
      // print('Success Get Data');
      emit(GetAllProductSuccess());
      // print('Success Get Data*****************');
    }).catchError((err){
      emit(GetAllProductError());
    });
    return productList;
  }

  List<ProductModel> myProducts = [];
  addProductToCart(ProductModel productModel){
    myProducts.add(productModel);
    emit(AddProductCartSuccess());
  }
}
