import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:store_app/models/product_model.dart';

part 'cart_screen_state.dart';

class CartScreenCubit extends Cubit<CartScreenState> {
  CartScreenCubit() : super(CartScreenInitial());

  double sum = 0.0 ;
  List<ProductModel>? myProductsBloc;
   sumOfProducts() {
    for (int i = 0; i < myProductsBloc!.length; ++i) {
        sum += myProductsBloc![i].price;
        print(sum);
    }
    emit(GetSum());
  }

  minusProduct(double val){
     sum-=val;
     if(sum.isNegative){
       sum-=sum;
     }
     emit(GetSum());
  }
}
