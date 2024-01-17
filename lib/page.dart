import 'package:flutter/material.dart';

class MyHomePage2 extends StatefulWidget {
  @override
  State<MyHomePage2> createState() => _MyHomePageState2();
}

class _MyHomePageState2 extends State<MyHomePage2> {
  int count1 = 6;
  int count2 = 6;
  int count3 = 3;
  int count4 = 5;
  int count5 = 6;
  int count6 = 4;
  int count7 = 2;
  int count8 = 6;
  int count9 = 3;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WATER PUZZEL HINT"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(0, 0), // near the top right

            colors: <Color>[
              Color(0xFF4285ff), // blue
              Color(0xFF34A853), // green
              Color(0xFFFBBC05), // yellow
              Color(0xFFEA4335), // red
              Color(0xFF35ccca),
              Color(0xFF34A853), // green
              Color(0xFFFBBC05), // yellow
              Color(0xFFEA4335), // red
              Color(0xFF34A853),
              Color(0xFF35ccca), // yellow sun
            ],
            stops: <double>[0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("images/images$count1.jpg"),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("images/images$count2.jpg"),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("images/images$count3.jpg"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("images/images$count4.jpg"),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("images/images$count5.jpg"),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("images/images$count6.jpg"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("images/images$count7.jpg"),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("images/images$count8.jpg"),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("images/images$count9.jpg"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
