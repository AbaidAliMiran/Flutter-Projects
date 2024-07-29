import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_quiz/models/question_model.dart';

class QuizPage extends StatefulWidget {
  final List<QuestionModel> questions;

  QuizPage({required this.questions, super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int questionIndex = 0;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    final question = widget.questions[questionIndex];
    return Scaffold(
      body: SafeArea(
        child: Container(
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
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 50.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Question : ${questionIndex + 1}",
                    style:
                        TextStyle(fontSize: 40.sp, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20.h),
                Text(
                  "${questionIndex + 1} - ${question.question}",
                  style:
                      TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 10.h),
                Expanded(
                  child: ListView.builder(
                    itemCount: question.options.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () async {
                          if (index == question.correctAnswerIndex) {
                            score++;
                          }
                          setState(() {
                            questionIndex++;
                          });
                          if (questionIndex == 4) {
                            endQuiz();
                          }
                        },
                        child: SizedBox(
                          width: 80.w,
                          height: 0.15.sw,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${index + 1} - ${question.options[index]}",
                              style: TextStyle(fontSize: 20.sp),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> endQuiz() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext _context) {
        return AlertDialog(
          backgroundColor: Colors.blue,
          title: Text(
            "End Game!",
            style: TextStyle(fontSize: 25.sp, color: Colors.white),
          ),
          content: Text(
            "Score: $score/${widget.questions.length}",
            style: TextStyle(fontSize: 25.sp, color: Colors.white),
          ),
        );
      },
    );
    await Future.delayed(
      Duration(seconds: 3),
    );
    Navigator.pop(context);
    Navigator.pop(context);
  }
}
