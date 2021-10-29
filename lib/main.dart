import 'package:flutter/material.dart';
import 'package:moseeqi/screens/player_screen.dart';


void main() => runApp(Start());

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PlayerScreen(),
    );
  }
}
