

import 'package:flutter/material.dart';
import 'package:food_app/auth/Login.dart';
import 'package:food_app/auth/sign_in.dart';
import 'package:food_app/widgets/carousel_pro.dart';
import 'package:food_app/widgets/mybutton.dart';


class SkipScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            child: Carousel(
              animationDuration: Duration(seconds: 2),
              autoplay: true,
              boxFit: BoxFit.cover,
              dotBgColor: Colors.transparent,
              dotIncreasedColor: Theme.of(context).primaryColor,
              dotSize: 10,
              images: [
                AssetImage("assets/imageslider1.jpg"),
                AssetImage("assets/imageslider2.jpg"),
                AssetImage("assets/imageslider3.jpg"),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: MyButton(
                  name: "Skip",
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (ctx) =>SignIn(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}