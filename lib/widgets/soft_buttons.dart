import 'package:flutter/material.dart';
import 'package:moseeqi/constants.dart';

class CircularSoftButton extends StatelessWidget {
  final double radius;
  final Widget icon;
  const CircularSoftButton({Key? key, required this.radius, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(radius / 2),
      child: Stack(
        children: [
          Container(
            width: radius,
            height: radius,
            decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(32.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26, offset: Offset(8, 6), blurRadius: 12),
                  BoxShadow(
                      color: Colors.white, offset: Offset(-8, -6), blurRadius: 12),
                ]),
          ),
          Positioned.fill(child: icon),
        ],
      ),
    );
  }
}
