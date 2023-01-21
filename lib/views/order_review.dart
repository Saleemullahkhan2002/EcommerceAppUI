import 'package:ecommerce_store_mobile_design/views/payment_successful.dart';
import 'package:ecommerce_store_mobile_design/widgets/brown_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrderReview extends StatelessWidget {
  const OrderReview({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
                    backgroundColor: Colors.white,

        appBar: AppBar(
            // backgroundColor: Color(0xffF3F6F8),
            backgroundColor: Colors.white,
          elevation: 0.0,
          title: Center(child: Text('ORDER REVIEW',style: TextStyle(color: Colors.black),)),
                    leading:GestureDetector(
                       onTap: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => OrderReview())
                  );
                },
                      child: Icon(FontAwesomeIcons.arrowLeftLong,color: Colors.black,)),
 actions: [Padding(
   padding: const EdgeInsets.all(8.0),
   child: Icon(Icons.more_horiz,color: Colors.black, ),
 )],
        ),
        body: Column(children: [
    
Padding(
  padding: const EdgeInsets.only(left: 13,top: 20),
  child:   Image(image: AssetImage('assets/images/products_row.png')),
),
   Padding(
     padding: const EdgeInsets.all(15),
     child: Image(image: AssetImage('assets/images/shipping_row.png')),
   ),
   Padding(
     padding: const EdgeInsets.all(15),
     child: Image(image: AssetImage('assets/images/payment.png')),
   ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Image(image: AssetImage('assets/images/shipping_pay.png')),
        ),

        Padding(
          padding: const EdgeInsets.all(30),
          child: GestureDetector(
             onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PaymentSuccessful())
                  );
                },
            child: BrownBox(img: 'place_order',
            img2: 'right_arrow',),
          ),
        )

        ],),
      ),
    );
  }
}
