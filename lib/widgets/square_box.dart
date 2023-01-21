import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SquareBox extends StatelessWidget {
  final Color color;
   SquareBox({super.key,
  required this.color });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 43,
      height: 43,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
      color:color, 

      ),
    );
  }
}