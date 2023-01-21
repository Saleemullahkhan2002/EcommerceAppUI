import 'package:ecommerce_store_mobile_design/views/single_product.dart';
import 'package:ecommerce_store_mobile_design/widgets/square_box.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Categouries extends StatefulWidget {
  Categouries({super.key});

  @override
  State<Categouries> createState() => _CategouriesState();
}

class _CategouriesState extends State<Categouries> {
  var selectRange = RangeValues(0.2, 0.6);
 
  slider() {
    return RangeSlider(
        values: selectRange,
        activeColor: Color(0xffC6AB59),
        inactiveColor: Color(0xffF3F6F8),
        onChanged: (RangeValues newRange) {
          setState(() => selectRange = newRange);
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: GestureDetector(
            onTap: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) =>  Categouries())
                    );
                  },
            child: Icon(
              FontAwesomeIcons.arrowLeftLong,
              color: Colors.black,
            ),
          ),
          title: Center(
              child: Text(
            'speaker',
            style: TextStyle(color: Colors.black),
          )),
          actions: [
            GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      context: context,
                      isScrollControlled: true,
                      builder: (context) => Container(
                            height:
                                MediaQuery.of(context).size.height * 0.70,
                            decoration: new BoxDecoration(
                              color: Colors.white,
                              borderRadius: new BorderRadius.only(
                                topLeft: const Radius.circular(25.0),
                                topRight: const Radius.circular(25.0),
                              ),
                            ),
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.all(40),
                              child: Container(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Gender',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                            'assets/images/men_box.png'),
                                        Image.asset(
                                            'assets/images/women_box.png'),
                                        Image.asset(
                                            'assets/images/both_box.png'),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Divider(),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Price Rate',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Stack(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.all(8.0),
                                          child: Image.asset(
                                              'assets/images/bar.png'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 25, left: 20),
                                          child: slider(),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                            'assets/images/min.png'),
                                        Image.asset(
                                            'assets/images/max.png'),
                                      ],
                                    ),
                                    Divider(),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          const Text(
                                            'Color',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight:
                                                    FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                            'assets/images/sq_box.png'),
                                        SquareBox(color: Color(0xff02C697)),
                                        SquareBox(color: Color(0xffF8B6C3)),
                                        SquareBox(color: Color(0xff3C79E6)),
                                        SquareBox(color: Color(0xff171717)),
                                        SquareBox(color: Color(0xff8F92A1)),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 40,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                            'assets/images/apply.png'),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )),
                          ));
                },
                child: Image.asset('assets/images/setting_bar.png')),
          ],
          ),
        body: SingleChildScrollView(
          child: Column(children: [
            GestureDetector(
              onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SingleProduct())
                    );
                  },
              child: Container(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 10, top: 130),
                      child:
                          Image.asset('assets/images/curved_box_large.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Image.asset('assets/images/spaker.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 250, left: 85),
                      child: Text(
                        'Beosound Balance',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 290, left: 90),
                      child: Image.asset('assets/images/beosound_data.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 320, left: 160),
                      child: Image.asset('assets/images/three_dots.png'),
                    )
                  ],
                ),
              ),
            ),
            

Image.asset('assets/images/menu.png'),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Image.asset('assets/images/beosoundone.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 15),
              child: Stack(children: [
                Image.asset('assets/images/beoplay.png'),
                Padding(
                  padding: const EdgeInsets.only(left: 260, top: 20),
                  child: Container(
                    child: Stack(
                      children: [
                        Image.asset('assets/images/base.png'),
                        Padding(
                          padding: const EdgeInsets.only(left: 27, top: 20),
                          child: Image.asset('assets/images/base_icon.png'),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}



