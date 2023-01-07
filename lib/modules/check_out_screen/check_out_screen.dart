import 'package:flutter/material.dart';
import 'package:store_app/core/utils/app_colors.dart';
import 'package:store_app/core/utils/app_strings_en.dart';
import 'package:store_app/core/utils/constants.dart';
import 'package:store_app/helper/widgets/order_delivery_summary.dart';
import 'package:store_app/helper/widgets/payment_method.dart';
import 'package:store_app/helper/widgets/text_form_field.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({Key? key}) : super(key: key);
  static String id = 'CheckOut';

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
   final TextEditingController _addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double total = ModalRoute.of(context)!.settings.arguments as double;
    return Scaffold(
      backgroundColor: isDark ? Colors.black :Color(0xffEAEAE8) ,

      appBar: AppBar(
          backgroundColor: isDark ? Colors.black :Color(0xffEAEAE8) ,
          leading: IconButton(
              onPressed: (){Navigator.pop(context);},
              icon: Icon(Icons.arrow_back),
              color: isDark ? Colors.white : Colors.black)
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppStringsEn.shippingAddress,style: TextStyle(fontSize: 25,color: isDark?AppColors.primary:AppColors.black),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: defaultFormField(controller: _addressController, label: 'address', type: TextInputType.streetAddress),
              ),
               Text(AppStringsEn.paymentsMethods,style: TextStyle(fontSize: 25,color: isDark?AppColors.primary:AppColors.black),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Wrap(
                  children: [
                    paymentComponents('assets/images/cash.png'),
                    paymentComponents('assets/images/bank-transfer.png'),
                    paymentComponents('assets/images/credit.png'),
                  ],
                ),
              ),
              rowOfOrder(total, AppStringsEn.order),
              rowOfOrder(15, AppStringsEn.delivery),
              rowOfOrder(total+15, AppStringsEn.summary),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.primary),
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.primary
                    ),
                    width: double.infinity,
                    height: 65,
                    child: Center(child: Text(AppStringsEn.submitOrder,style:const TextStyle(fontSize: 20),),),
                  ),
                  //TODO: here we will submit the order
                  onTap: (){},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
