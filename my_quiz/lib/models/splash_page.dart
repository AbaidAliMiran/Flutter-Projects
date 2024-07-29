import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_quiz/pages/home_page.dart';

class Splash_Page extends StatefulWidget {
  const Splash_Page({super.key});

  @override
  State<Splash_Page> createState() => _Splash_PageState();
}

class _Splash_PageState extends State<Splash_Page>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: Duration(seconds: 3))
        ..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 20), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Home_Page(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.green,
                Colors.lightBlueAccent,
                Colors.lightBlue,
                Colors.blue,
                Colors.lightBlue,
                Colors.lightBlueAccent,
                Colors.green
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 250.h,
                width: 250.w,
                child: Image.asset("assets/images/cropped_image-removebg.png"),
              ),
              SizedBox(
                height: 80.h,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    "My Quiz",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.sp,
                        color: Colors.lightGreenAccent),
                    textAlign: TextAlign.center,
                  ))
            ],
          ),
        ),
        Positioned(
          bottom: 30.h,
          left: 0.45.sw,
          child: AnimatedBuilder(
              animation: _controller,
              child: Container(
                height: MediaQuery.of(context).size.width * 0.10,
                width: MediaQuery.of(context).size.width * 0.10,
                child: Image.asset("assets/images/cropped_image-removebg.png"),
              ),
              builder: (BuildContext context, Widget? child) {
                return Transform.rotate(
                  angle: _controller.value * 2.0 * math.pi,
                  child: child,
                );
              }),
        ),
      ])),
    );
  }
}
