import 'package:flutter/material.dart';
import 'package:store_app/core/utils/app_colors.dart';
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
      appBar: AppBar(),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Shipping address',style:TextStyle(fontSize: 25),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: defaultFormField(controller: _addressController, label: 'address', type: TextInputType.streetAddress),
              ),
              const Text('Payments methods',style:TextStyle(fontSize: 25),),
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
              rowOfOrder(total, 'Order:'),
              rowOfOrder(15, 'Delivery:'),
              rowOfOrder(total+15, 'Summary:'),
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
                    child:const Center(child: Text('Submit Order',style: TextStyle(fontSize: 20),),),
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
