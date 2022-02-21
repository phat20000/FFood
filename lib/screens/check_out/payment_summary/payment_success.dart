import 'package:flutter/material.dart';
import 'package:food_app/models/delivery_address_model.dart';
import 'package:food_app/providers/review_cart_provider.dart';
import 'package:food_app/screens/check_out/delivery_details/single_delivery_item.dart';
import 'package:provider/provider.dart';

class SuccessPage extends StatefulWidget {

  final DeliveryAddressModel deliverAddressList;
  SuccessPage({this.deliverAddressList});

  @override
  _SuccessPageState createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    ReviewCartProvider reviewCartProvider = Provider.of(context);
    reviewCartProvider.getReviewCartData();

    double discount = 30;
    double discountValue;
    double shippingCharge = 3.7;
    double total;
    double totalPrice = reviewCartProvider.getTotalPrice();
    if (totalPrice > 300) {
      discountValue = (totalPrice * discount) / 100;
      total = totalPrice - discountValue;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Success Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Address :"),
          SingleDeliveryItem(
            address:
            " ${widget.deliverAddressList.street}",
            title:
            "${widget.deliverAddressList.firstname} ${widget.deliverAddressList.lastname}",
            number: widget.deliverAddressList.mobileNo,
            addressType: widget.deliverAddressList.addressType ==
                "AddressTypes.Home"
                ? "Home"
                : widget.deliverAddressList.addressType ==
                "AddressTypes.Other"
                ? "Other"
                : "Work",
          ),
          ],
        ),
      ),
    );
  }
}
