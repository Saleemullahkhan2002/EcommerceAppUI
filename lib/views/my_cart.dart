import 'dart:developer';

import 'package:ecommerce_store_mobile_design/views/shipping.dart';
import 'package:ecommerce_store_mobile_design/widgets/brown_box.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  int counter = 0;
  int x = 1600;
  int y = 1;
  incrementCounter() {
    setState(() {
      counter++;
    });
  }

  decrement() {
    setState(() {
      if (counter <= 0) {
        return setState(() {
          
          (counter);
        });
      }
      counter--;
    });
  }

    int _selectedIndex = 2;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'search',
      style: optionStyle,
    ),
    Text(
      'order',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffF3F6F8),
          elevation: 0.0,
          leading: GestureDetector(
            onTap: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => const MyCart())
                    );
                  },
            child: Icon(
              FontAwesomeIcons.arrowLeftLong,
              color: Colors.black,
            ),
          ),
          title: Text(
            'My Cart',
            style: TextStyle(color: Colors.black),
          ),
          actions: [Image.asset('assets/images/setting_dots.png')],
        ),
        body: Column(
          children: [
            Container(
              child: Stack(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 23, top: 20),
                  child: Image.asset('assets/images/rectangle_box.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35, left: 180),
                  child: Image.asset('assets/images/beosound1_data.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 65, left: 180),
                  child: Image.asset('assets/images/color_sound.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: Image.asset('assets/images/input_image.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 150, top: 130),
                  child: Container(
                    width: 140,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0xffF3F6F8),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            decrement();
                          },
                          icon: Icon(
                            Icons.remove,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            '$counter',
                            style: TextStyle(
                                backgroundColor: Colors.white, fontSize: 17),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        IconButton(
                          onPressed: () {
                            incrementCounter();
                          },
                          icon: Icon(
                            Icons.add,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/shipping.png'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset('assets/images/promo_code.png'),
            ),
            // SizedBox(
            //   height: 40,
            // ),
            // Divider(
            //   thickness: 0,
            //   height: 1,
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Image.asset('assets/images/total.png'),
            // ),

            Padding(
              padding: const EdgeInsets.only(right: 50, left: 50, top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    '\$ ${counter * x}',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Shipping()));
                },
                child: BrownBox(
                  img: 'checkout',
                  img2: 'right_arrow',
                ),
              ),
            ),
          ],       ),
          
          
bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Color(0xffC6AB59),
              hoverColor:  Color(0xffC6AB59),
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor:  Color(0xffC6AB59),
              color: Colors.black,
              tabs: [
                GButton(
                  icon:  FontAwesomeIcons.homeAlt,
                  text: 'Home',
                ),
                GButton(
                  icon: FontAwesomeIcons.search,
                  text: 'search',
                ),
                GButton(
                  icon:  FontAwesomeIcons.bagShopping,
                  text: 'order',
                ),
                GButton(
                  icon:  FontAwesomeIcons.user,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
          
          );

  }
}
