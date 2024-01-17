import 'dart:math';
import 'package:flutter/material.dart';
import 'package:puzzel/page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int randomnum = 0;
  int count1 = 6;
  int count2 = 0;
  int count3 = 0;
  int count4 = 0;
  int count5 = 6;
  int count6 = 0;
  int count7 = 0;
  int count8 = 0;
  int count9 = 3;

  bool ans = false;

  void fun2() {
    setState(() {
      count2 = Random().nextInt(7);
    });
  }

  void fun3() {
    setState(() {
      count3 = Random().nextInt(7);
    });
  }

  void fun4() {
    setState(() {
      count4 = Random().nextInt(7);
    });
  }

  void fun6() {
    setState(() {
      count6 = Random().nextInt(7);
    });
  }

  void fun7() {
    setState(() {
      count7 = Random().nextInt(7);
    });
  }

  void fun8() {
    setState(() {
      count8 = Random().nextInt(7);
    });
  }

  void chack() {
    setState(() {
      if (count1 == 6 &&
          count2 == 6 &&
          count3 == 3 &&
          count4 == 5 &&
          count5 == 6 &&
          count6 == 4 &&
          count7 == 2 &&
          count8 == 6 &&
          count9 == 3) {
        ans = true;
      }
    });
  }

  void reset() {
    setState(() {
      count2 = 0;
      count3 = 0;
      count4 = 0;
      count6 = 0;
      count7 = 0;
      count8 = 0;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WATER PUZZEL"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: SweepGradient(
            center: FractionalOffset.center,
            colors: <Color>[
              Color(0xFF4285ff), // blue
              Color(0xFF34A853), // green
              Color(0xFFFBBC05), // yellow
              Color(0xFFEA4335), // red
              Color(0xFF35ccca),
              Color(
                  0xFF4285F4), // blue again to seamlessly transition to the start
            ],
            stops: <double>[0.0, 0.25, 0.45, 0.65, 0.9, 1.0],
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
                    child: Image.asset("images/images$count1.jpg", width: 100, height: 100,),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: TextButton(
                      onPressed: () {
                        fun2();
                      },
                      child: Image.asset("images/images$count2.jpg"),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: TextButton(
                      onPressed: () {
                        fun3();
                      },
                      child: Image.asset("images/images$count3.jpg"),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: TextButton(
                      onPressed: () {
                        fun4();
                      },
                      child: Image.asset("images/images$count4.jpg"),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("images/images$count5.jpg"),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: TextButton(
                      onPressed: () {
                        fun6();
                      },
                      child: Image.asset("images/images$count6.jpg"),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: TextButton(
                      onPressed: () {
                        fun7();
                      },
                      child: Image.asset("images/images$count7.jpg"),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: TextButton(
                      onPressed: () {
                        fun8();
                      },
                      child: Image.asset("images/images$count8.jpg",width: 20,height: 20,),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("images/images$count9.jpg",width: 100,height: 100,),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: TextButton(
                      onPressed: () {
                        chack();
                      },
                      child: Text("CHEK"),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: TextButton(
                      onPressed: () {
                        reset();
                      },
                      child: Text("RESET"),
                    ),
                  ),
                ],
              ),
              Container(
                height: 50,
                width: 500,
                child: Center(child: Text("YOUR PUZZEL IS $ans")),
              ),
              Container(
                height: 50,
                width: 200,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage2()));
                  },
                  child: Text("HINT"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
