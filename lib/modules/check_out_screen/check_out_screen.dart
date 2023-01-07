import 'package:flutter/material.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({Key? key}) : super(key: key);
  static String id = 'CheckOut';

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    double total = ModalRoute.of(context)!.settings.arguments as double;
    return Scaffold(
      appBar: AppBar(),
      body:  Center(
        child: Text(total.toString()),
      ),
    );
  }
}
