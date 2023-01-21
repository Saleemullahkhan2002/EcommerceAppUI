// import 'package:flutter/cupertino.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// class BottomBar extends StatefulWidget {
//   const BottomBar({super.key});

//   @override
//   State<BottomBar> createState() => _BottomBarState();
// }

// class _BottomBarState extends State<BottomBar> {
//   int _selectedIndex = 0;
//   static const TextStyle optionStyle =
//       TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
//   static const List<Widget> _widgetOptions = <Widget>[
//     Text(
//       'Home',
//       style: optionStyle,
//     ),
//     Text(
//       'Likes',
//       style: optionStyle,
//     ),
//     Text(
//       'Search',
//       style: optionStyle,
//     ),
//     Text(
//       'Profile',
//       style: optionStyle,
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
    
    
//     bottomNavigationBar:
//     Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             blurRadius: 20,
//             color: Colors.black.withOpacity(.1),
//           )
//         ],
//       ),
//       child: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
//           child: GNav(
//             rippleColor: Color(0xffC6AB59),
//             hoverColor: Color(0xffC6AB59),
//             gap: 8,
//             activeColor: Colors.black,
//             iconSize: 24,
//             padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//             duration: Duration(milliseconds: 400),
//             tabBackgroundColor: Color(0xffC6AB59),
//             color: Colors.black,
//             tabs: [
//               GButton(
//                 icon: FontAwesomeIcons.homeAlt,
//                 text: 'Home',
//               ),
//               GButton(
//                 icon: FontAwesomeIcons.search,
//                 text: 'search',
//               ),
//               GButton(
//                 icon: FontAwesomeIcons.bagShopping,
//                 text: 'order',
//               ),
//               GButton(
//                 icon: FontAwesomeIcons.user,
//                 text: 'Profile',
//               ),
//             ],
//             selectedIndex: _selectedIndex,
//             onTabChange: (index) {
//               setState(() {
//                 _selectedIndex = index;
//               });
//             },
//           ),
//         ),
//       ),
//     );bottomNavigationBar:
//     Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             blurRadius: 20,
//             color: Colors.black.withOpacity(.1),
//           )
//         ],
//       ),
//       child: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
//           child: GNav(
//             rippleColor: Color(0xffC6AB59),
//             hoverColor: Color(0xffC6AB59),
//             gap: 8,
//             activeColor: Colors.black,
//             iconSize: 24,
//             padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//             duration: Duration(milliseconds: 400),
//             tabBackgroundColor: Color(0xffC6AB59),
//             color: Colors.black,
//             tabs: [
//               GButton(
//                 icon: FontAwesomeIcons.homeAlt,
//                 text: 'Home',
//               ),
//               GButton(
//                 icon: FontAwesomeIcons.search,
//                 text: 'search',
//               ),
//               GButton(
//                 icon: FontAwesomeIcons.bagShopping,
//                 text: 'order',
//               ),
//               GButton(
//                 icon: FontAwesomeIcons.user,
//                 text: 'Profile',
//               ),
//             ],
//             selectedIndex: _selectedIndex,
//             onTabChange: (index) {
//               setState(() {
//                 _selectedIndex = index;
//               });
//             },
//           ),
//         ),
//       ),
//     );],
//     );
    
//   }
// }
