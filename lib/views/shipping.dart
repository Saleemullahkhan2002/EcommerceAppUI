import 'package:ecommerce_store_mobile_design/views/order_review.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Shipping extends StatefulWidget {

   Shipping({super.key});

  @override
  State<Shipping> createState() => _ShippingState();
}

class _ShippingState extends State<Shipping> {
  var size,height,width;
 int _selectedIndex = 3;
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

    size = MediaQuery.of(context).size;
    height = size.height;
     width = size.width;
 
    return Scaffold(
      body: Column(
      
        children: [

Stack(children: [
  

    Container(

      width: 500,
      height: 580,
      decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15) ),
      color: Color(0xffC6AB59)
      
      ),
    )    ,

    Padding(
      padding: const EdgeInsets.only(left: 40,top: 70 ),
      child: Image(
       image: AssetImage('assets/images/user_data.png')),
    ),
    Padding(
      padding: const EdgeInsets.only(top: 300,left: 38),
      child: Container(
  width: 320,
  height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white
        ),
        child: Column(children: [
          SizedBox(height: 15,),
          Row(children: [
            Image(
         image: AssetImage('assets/images/title.png')),
      
          ],),
          SizedBox(height: 10,),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Image(
         image: AssetImage('assets/images/products.png')),
           ),
      Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
         image: AssetImage('assets/images/order.png')),
            ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Image(
         image: AssetImage('assets/images/order_arrive.png')),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: GestureDetector(
                 onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const OrderReview())
                  );
                },
                 child: Image(
                        image: AssetImage('assets/images/track.png')),
               ),
             ),
  
  
  
      ],)
        ],),
      ),
    )


],),

 Padding(
   padding: const EdgeInsets.all(8.0),
   child: Image(
           image: AssetImage('assets/images/item.png')),
 ),
     
      ],),

      
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
