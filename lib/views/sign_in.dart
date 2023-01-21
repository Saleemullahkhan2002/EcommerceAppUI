import 'package:ecommerce_store_mobile_design/views/sign_up.dart';
import 'package:ecommerce_store_mobile_design/widgets/brown_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class SignIn extends StatelessWidget {
  const SignIn({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            Row(
              children: [
            
              Padding(
          padding: const EdgeInsets.only(top: 20,left: 25,right: 10),
          child: Image.asset('assets/images/map_pin.png'),
              ),
              Padding(
          padding: const EdgeInsets.only(top: 20,left: 5),
          child: Image.asset('assets/images/map_location.png'),
              ),
             ],),
        SizedBox(height:50,),
           Row(
             children: [
               Padding(
                 padding: const EdgeInsets.only(left: 30),
                 child: Image.asset('assets/images/lets_sign.png'),
               ),
             ],
           ),
           Row(
             children: [
               Padding(
                 padding: const EdgeInsets.only(left: 30,top: 15),
                 child: Image.asset('assets/images/lets_sign_data.png'),
               ),
             ],
           ),
        
        Row(
          children: [
          Padding(
            padding: const EdgeInsets.only(left: 30,top: 50),
            child: Image.asset('assets/images/username_pic.png'),
          ),
          ],
        ),
        
        
         const Padding(
          padding: EdgeInsets.all(20),
          child:   TextField(
          
          decoration:
            InputDecoration(
          
            focusedBorder: OutlineInputBorder(
               borderSide: BorderSide(width: 1, color: Color(0xff8F92A1)),
             ),
            
        
            prefixIcon: Icon(Icons.person,color: Colors.black,),
          
          hintText: 'Username',
          ),
          
          ),),
        
        
          Row(
          children: [
          Padding(
            padding: const EdgeInsets.only(left: 30,top: 10),
            child: Image.asset('assets/images/password.png'),
          ),
          ],
        ),
         const Padding(
          padding: EdgeInsets.all(20),
          child:   TextField(
          
          decoration:
            InputDecoration(
          
            focusedBorder: OutlineInputBorder(
               borderSide: BorderSide(width: 1, color: Color(0xff8F92A1)),
             ),
            
        
            prefixIcon: Icon(Icons.lock_outline,color: Colors.black,),
            suffixIcon: Icon(Icons.visibility,color: Colors.black, ),
          
          hintText: 'password',
          ),
          
          ),
         ),
        
         Padding(
           padding: const EdgeInsets.only(top: 130),
           child: GestureDetector(
             onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUp())
                  );
                },
             child: BrownBox(img: 'signin',
             img2: 'signup_arrow',),
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(12),
           child: Image.asset('assets/images/dont_have.png'),
         ),
        
         SizedBox(height: 40,),
        
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
          Container(
            width: 300,
              height: 45,
              decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xff3C79E6),
              ),
        child: Row(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:   Icon(Icons.facebook_rounded,color: Colors.white, ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35),
          child:   Text('Connect With Facebook', style: TextStyle(color: Colors.white),),
        )
        
        
        ],),
          )
        ],)
          ],),
        ),
      ),
    );
  }
}
