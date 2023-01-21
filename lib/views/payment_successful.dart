import 'package:ecommerce_store_mobile_design/views/order_failed.dart';
import 'package:ecommerce_store_mobile_design/widgets/brown_box.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PaymentSuccessful extends StatelessWidget {
  const PaymentSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
                    backgroundColor: Colors.white,

     appBar: AppBar(
            // backgroundColor: Color(0xffF3F6F8),
            backgroundColor: Colors.white,
          elevation: 0.0,
          title: Center(child: Text('ORDER COMPLETE',style: TextStyle(color: Colors.black,fontSize: 17  ),)),
                    leading:GestureDetector(
                      onTap: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => const PaymentSuccessful())
                    );
                  },
                      child: Icon(FontAwesomeIcons.arrowLeftLong,color: Colors.black,)),
 actions: [Padding(
   padding: const EdgeInsets.all(8.0),
   child: Icon(Icons.more_horiz,color: Colors.black, ),
 )],),


     body: Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 140),
        child: Image.asset('assets/images/password_success.png'),
      ),


      Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Image.asset('assets/images/products_selected.png'),
      ),

      Padding(
        padding: const EdgeInsets.only(top:150),
        child: GestureDetector(
           onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const OrderFailed())
                  );
                },
          child: BrownBox(img: 'see_order',img2: 'right_arrow',)),
      )
     ],),   
      ),
    );
  }
}
