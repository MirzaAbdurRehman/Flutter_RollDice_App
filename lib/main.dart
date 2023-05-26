import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Balls Shuffling Project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Ball_Shuffle(),
    );
  }
}

class Ball_Shuffle extends StatefulWidget {
  const Ball_Shuffle({Key? key}) : super(key: key);

  @override
  State<Ball_Shuffle> createState() => _Ball_ShuffleState();
}

class _Ball_ShuffleState extends State<Ball_Shuffle> {
  String img = "assets/images/ball1.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(80, 158, 248, 0.925),
      appBar: AppBar(
        title: Text("Ball Shuffling App"),
        centerTitle: true,
      ),
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
            child: Text(
              "Ask Me Anything...",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          Container(
            child: Image.asset(
              img,
              height: 500,
              width: 300,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                int Dice_First = Random().nextInt(5) + 1;
                img = "assets/images/ball$Dice_First.png";
              });
            },
            child: Text(
              "Ask",
              style: TextStyle(
                fontSize: 35,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
