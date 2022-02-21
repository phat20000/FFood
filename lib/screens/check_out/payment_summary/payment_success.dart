import 'package:flutter/material.dart';
import 'package:food_app/models/delivery_address_model.dart';


class SuccessPage extends StatefulWidget {

  final DeliveryAddressModel deliverAddressList;
  SuccessPage({this.deliverAddressList});

  @override
  _SuccessPageState createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Success Page"),
      ),
    );
  }
}
