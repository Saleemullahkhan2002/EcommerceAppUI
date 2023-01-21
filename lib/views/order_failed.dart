import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrderFailed extends StatelessWidget {
  const OrderFailed({super.key});

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
                      MaterialPageRoute(builder: (context) => const OrderFailed())
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
        child: Image.asset('assets/images/order_failed.png'),
      ),
       Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Image.asset('assets/images/help.png'),
      ),
       Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Image.asset('assets/images/brown_box.png'),
      ),
 Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Image.asset('assets/images/wh_box.png'),
      ),


    ]),
      ),
    );
  }
}
