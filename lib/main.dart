import 'package:ecommerce_store_mobile_design/views/categouries_v1.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ecommerce_store_mobile_design/views/home.dart';
import 'package:ecommerce_store_mobile_design/views/my_cart.dart';
import 'package:ecommerce_store_mobile_design/views/onboarding.dart';
import 'package:ecommerce_store_mobile_design/views/order_failed.dart';
import 'package:ecommerce_store_mobile_design/views/order_review.dart';
import 'package:ecommerce_store_mobile_design/views/payment_successful.dart';
import 'package:ecommerce_store_mobile_design/views/shipping.dart';
import 'package:ecommerce_store_mobile_design/views/sign_in.dart';
import 'package:ecommerce_store_mobile_design/views/sign_up.dart';
import 'package:ecommerce_store_mobile_design/views/single_product.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
 
      home: Onboarding()
       );
  }
}
