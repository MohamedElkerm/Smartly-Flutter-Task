
import 'package:store_app/helper/remote/api.dart';
import 'package:store_app/models/product_model.dart';

class CategoryServices {
  Future<List<ProductModel>> getProductByCategory(String category) async {
    List<dynamic> data =await Api().get(url: 'https://fakestoreapi.com/products/category/$category');
    List<ProductModel> categoryProducts = [];
    for (int i = 0; i < data.length; ++i) {
      categoryProducts.add(ProductModel.fromJson(data[i]));
    }
    return categoryProducts;
  }
}
