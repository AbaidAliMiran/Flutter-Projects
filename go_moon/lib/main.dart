import 'package:flutter/material.dart';
import 'package:go_moon/pages/home_page.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super (key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "#Go Moon",
      theme: ThemeData(scaffoldBackgroundColor: Color.fromRGBO(33, 33, 33, 1),
      ),
      home: HomePage(),
    );
  }
}