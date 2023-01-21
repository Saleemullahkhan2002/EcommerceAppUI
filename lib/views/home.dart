import 'package:ecommerce_store_mobile_design/views/categouries_v1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  homeBox() {
    return Container(
      width: 85,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Color(0xffC6AB59)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset('assets/images/house.png'),
          ),
          Image.asset('assets/images/home.png')
        ],
      ),
    );
  }


    int _selectedIndex = 0;
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
    return SafeArea(
      child: Scaffold(
//  bottomNavigationBar: BottomNavigationBar(
//     items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.business),
//             label: 'Business',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.school),
//             label: 'School',
//           ),
//         ],
        
//       ),     


        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Image.asset('assets/images/menu_bar.png'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 20),
                    child: Image.asset('assets/images/browse.png'),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                       onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Categouries())
                      );
                    },
                      child: Container(
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 10, top: 50),
                              child: Image.asset('assets/images/curved_box.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Image.asset('assets/images/beosound.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 170, left: 85),
                              child: Text(
                                'Speakers',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 200, left: 87),
                              child: Image.asset('assets/images/hundredplus.png'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 10, top: 50),
                            child: Image.asset('assets/images/curved_box.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Image.asset('assets/images/headphones.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 170, left: 85),
                            child: Text(
                              'Headphones',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 200, left: 87),
                            child:
                                Image.asset('assets/images/fifteenproducts.png'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 2,
                color: Color(0xffF3F6F8),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Image.asset('assets/images/recommended.png'),
              ),
              Row(
                children: [
                  Container(
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Image.asset('assets/images/square_box.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40, top: 20),
                          child: Image.asset('assets/images/beosound1.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 60, top: 140),
                          child: Image.asset('assets/images/beosound1_pic.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 80, top: 170),
                          child: Image.asset('assets/images/beosound1_price.png'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Image.asset('assets/images/square_box.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40, top: 20),
                          child: Image.asset('assets/images/beolit.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 60, top: 140),
                          child: Image.asset('assets/images/beolit_pic.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 80, top: 170),
                          child: Image.asset('assets/images/beolit_price.png'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
        
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: const Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: const Icon(
                  Icons.work_outline_outlined,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: const Icon(
                  Icons.widgets_outlined,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: const Icon(
                  Icons.person_outline,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ],
          ),
            ],
          ),
        ),

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
      ),
    );
  }
}
