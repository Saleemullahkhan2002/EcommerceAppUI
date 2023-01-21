import 'package:ecommerce_store_mobile_design/views/my_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SingleProduct extends StatelessWidget {
  const SingleProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF3F6F8),

appBar: AppBar(
  backgroundColor: Color(0xffF3F6F8),
          elevation: 0.0,
          leading: GestureDetector(
            onTap: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => const SingleProduct())
                    );
                  },
            child: Icon(FontAwesomeIcons.arrowLeftLong,color: Colors.black,)),
  actions: [ Image.asset('assets/images/shopping_bar.png') ]),
    body: SingleChildScrollView(
      child: Column(children: [
    Stack(
      children: [
    Padding(
      padding: const EdgeInsets.all(20),
      child:   Image.asset('assets/images/speaker.png'),
    ),
    
    Padding(
      padding: const EdgeInsets.only(left: 10,top: 330),
      child:   GestureDetector(
        onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyCart())
                    );
                  },
        child: Image.asset('assets/images/descriptions.png')),
    ),
    
    
    
    
    
    
    Padding(
      padding: const EdgeInsets.only(left: 170,top: 70),
      child:   GestureDetector(
        
         onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  MyCart())
                    );
                  },
        child: Image.asset('assets/images/beosoundlarge.png')),
    )
    
    
    
    ],),
    
    
    
      ],),
    ),
    
    
    );
  }
}
