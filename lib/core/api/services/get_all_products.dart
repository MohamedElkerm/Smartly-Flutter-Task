import 'package:store_app/helper/remote/api.dart';
import 'package:store_app/models/product_model.dart';

class AllProductServices {
  Future<List<ProductModel>> getAllProducts() async {
    List<ProductModel> productList = [];
    await Api().get(url: 'https://fakestoreapi.com/products').then((value) {

      for (int i = 0; i < value.length; ++i) {
        productList.add(ProductModel.fromJson(value[i]));
        print(productList[i].title);
      }
      print('Success Get Data');
      return value;
    });
    return productList;
  }
}
