import 'package:flutter/material.dart';
import 'dart:async';
import 'package:login_ui/pages/login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.yellow,
              Colors.orange,
              Colors.deepOrange,
              Color(0xFF212121),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/splash_logo.jpg"),
                  radius: 50,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Login Ui",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                )
              ],
            ),
          )),
    );
  }
}
