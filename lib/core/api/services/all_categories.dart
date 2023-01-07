
import 'package:store_app/helper/remote/api.dart';

class AllCategoriesServices{
  Future<List<dynamic>> getCategories()async{
    List<dynamic> myList =await Api().get(url: 'https://fakestoreapi.com/products/categories');
    return myList;
  }
}