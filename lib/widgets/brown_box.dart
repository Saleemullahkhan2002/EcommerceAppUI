import 'package:flutter/material.dart';

class BrownBox extends StatelessWidget {
  final String img;
  final String img2;

  BrownBox({super.key, 
  required this.img,
     this.img2='img_def',

    });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffC6AB59),
      ),

    child: Row( 
      children: [
Padding(
  padding: const EdgeInsets.only(left: 110),
  child:   Image(image: AssetImage('assets/images/$img.png')),
),

Padding(
  padding: const EdgeInsets.only(left: 30),
  child:   Image(image: AssetImage('assets/images/$img2.png')),
),

    ],),
    );
  }
}
