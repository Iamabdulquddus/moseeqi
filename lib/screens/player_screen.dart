import 'package:flutter/material.dart';
import 'package:moseeqi/constants.dart';
import 'package:moseeqi/widgets/soft_buttons.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({Key? key}) : super(key: key);

  @override
  _PlayerScreenState createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircularSoftButton(
                  icon: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.black54,
                  ),
                  radius: 50.0,
                ),
                Text(
                  'Moseeqi',
                  style: TextStyle(fontSize: 24.0, color: Colors.black54, fontWeight: FontWeight.bold),
                ),
                CircularSoftButton(
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.black54,
                  ),
                  radius: 50.0,
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 50,
                  height: MediaQuery.of(context).size.width - 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width),
                    gradient: LinearGradient(
                        colors: [shadowColor, Colors.white],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(8, 6),
                          blurRadius: 12),
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(-8, -6),
                          blurRadius: 12),
                    ],
                  ),
                ),
                Positioned(
                  top: 10.0,
                  bottom: 10.0,
                  left: 10.0,
                  right: 10.0,
                  child: CircleAvatar(
                    backgroundImage: Image.asset('images/pirat.jpg').image,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Life is a joke - Ahsan_Program',
              style: TextStyle(fontSize: 21, color: textColor),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Lofi',
              style: TextStyle(
                  fontSize: 18, color: textColor, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.0,),
            Stack (
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 32),
                  width: double.infinity,
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: backgroundColor,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(1, 4),
                          blurRadius: 12),
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(-1, -4),
                          blurRadius: 12),
                    ],
                  ),
                ),
                Positioned (
                  top: 2,
                  bottom: 2,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 36,),
                    width: 200,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(
                        colors: [seekBarLightColor , seekBarDarkColor],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('1:10', style: TextStyle(fontSize: 18, color: textColor),),
                  Text('3:50', style: TextStyle(fontSize: 18, color: textColor),),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircularSoftButton(
                  icon: Icon(
                    Icons.skip_previous,
                    color: Colors.black54,
                  ),
                  radius: 50.0,
                ),
                CircularSoftButton(
                  icon: Icon(
                    Icons.play_arrow_rounded,
                    size: 50  ,
                    color: Colors.black54,
                  ),
                  radius: 70,
                ),

                CircularSoftButton(
                  icon: Icon(
                    Icons.skip_next,
                    color: Colors.black54,
                  ),
                  radius: 50.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
