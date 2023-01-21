import 'package:ecommerce_store_mobile_design/views/sign_in.dart';
import 'package:ecommerce_store_mobile_design/widgets/brown_box.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
    body: Column(children: [
    
      Stack(children: [
 const Padding(
  padding:  EdgeInsets.only(left:243,top: 40 ),
  child:   Image(image: AssetImage('assets/images/brown_circle.png')),
),
Padding(
  padding: const EdgeInsets.only(left: 50, top: 90),
  child:   Image(image: AssetImage('assets/images/black_circle.png')),
),
Padding(
  padding: const EdgeInsets.only(top: 260),
  child:   Image(image: AssetImage('assets/images/grey_circle.png')),
),


      ],),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

  Padding(
    padding: const EdgeInsets.all(4),
    child: Image.asset('assets/images/little_wh_dot.png'),
  ),
    Padding(
      padding: const EdgeInsets.all(4),
      child: Image.asset('assets/images/little_br_dot.png'),
    ),
  Padding(
    padding: const EdgeInsets.all(4),
    child: Image.asset('assets/images/little_wh_dot.png'),
  ),

],),

Padding(
  padding: const EdgeInsets.only(top: 50),
  child:   Image.asset('assets/images/welcome.png'),
),

Padding(
  padding: const EdgeInsets.only(top: 20),
  child:   Image.asset('assets/images/welcome_data.png'),
),

Padding(
  padding: const EdgeInsets.only(top: 40),
  child:   GestureDetector(
    
     onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignIn())
                  );
                },
    child: BrownBox( img: 'get_started', img2: 'right_arrow', )),
)
  
  
    ],),
    
      ),
    );
  }
}
