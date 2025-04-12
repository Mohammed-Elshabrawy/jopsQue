import 'package:flutter/material.dart';
import 'dart:async';
import 'Slider Screens/Slide1.dart';


class Splash1 extends StatefulWidget {
  const Splash1({super.key});

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {
  @override
  void initState() {
    super.initState();
    StartTimer();
    StartAnimation();
  }

  StartTimer() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, route);
  }

  StartAnimation() async {
    var duration = const Duration(milliseconds: 500);
    return Timer(duration, go);
  }

  go() {
    setState(() {
      h = 750;
      w = 500;
      c = const Color(0xc1cff6);
    });
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => One()));
  }

  var h = 200.0;
  var w = 200.0;
  Color c =  const Color(0xb68098ff);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Stack(
          children: [
            Center(
              child: AnimatedContainer(
                // curve: Curves.easeIn,
                height: h,
                width: w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: c,
                ),
                duration: const Duration(seconds: 2),
                child: const SizedBox(
                  height: 10,
                ),
              ),
            ),
            Center(
              child: Image.asset("lib/Consts/Assets/Logo.png"),
            ),
          ],
        ),
      )),
    );
  }
}
