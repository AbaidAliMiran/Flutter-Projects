import 'package:flutter/material.dart';
import 'package:login_ui/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login ',
      home: SplashPage(),
    );
  }
}
