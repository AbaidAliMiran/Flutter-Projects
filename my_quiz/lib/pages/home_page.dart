import 'package:flutter/material.dart';
import 'package:my_quiz/models/question_model.dart';
import 'package:my_quiz/pages/quiz_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

var page;

class _Home_PageState extends State<Home_Page> {
  double _currentDifficultyLevel = 0;
  List<String> _difficulty = ["Easy", "Medium", "Hard"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _buildUI()),
    );
  }

  Widget _buildUI() {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.green,
        Colors.lightBlueAccent,
        Colors.lightBlue,
        Colors.blue,
        Colors.lightBlue,
        Colors.lightBlueAccent,
        Colors.green
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      padding: EdgeInsets.symmetric(horizontal: 40.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          _appTitle(),
          _difficultySlider(),
          _startQuiz(),
        ],
      ),
    );
  }

  Widget _appTitle() {
    return Column(
      children: [
        Text(
          "My Quiz",
          style: TextStyle(
              fontSize: 45.sp,
              fontWeight: FontWeight.w700,
              color: Colors.greenAccent),
        ),
        Text(
          _difficulty[_currentDifficultyLevel.toInt()],
          style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
              color: Colors.greenAccent),
        ),
      ],
    );
  }

  Widget _difficultySlider() {
    return Slider(
        label: "Difficulty",
        min: 0,
        max: 2,
        divisions: 2,
        activeColor: Colors.lightBlueAccent,
        inactiveColor: Colors.greenAccent,
        value: _currentDifficultyLevel,
        onChanged: (_value) {
          _currentDifficultyLevel = _value;
          setState(() {});
        });
  }

  Widget _startQuiz() {
    Widget? page;

    switch (_difficulty[_currentDifficultyLevel.toInt()]) {
      case "Easy":
        page = QuizPage(questions: easy_questions_model);
        break;
      case "Medium":
        page = QuizPage(questions: medium_questions_model);
        break;
      case "Hard":
        page = QuizPage(questions: hard_questions_model);
        break;
      default:
        return Center(child: Text("Unknown Level"));
    }

    return MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page!),
        );
      },
      height: 80.h,
      minWidth: 320.w,
      color: Colors.greenAccent,
      child: Text(
        "Start Quiz",
        style: TextStyle(color: Colors.lightBlue, fontSize: 17.sp),
      ),
    );
  }
}
