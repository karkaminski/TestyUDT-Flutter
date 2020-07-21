import 'package:TestyUDT/dummy_data.dart';
import 'package:TestyUDT/screens/exam_result_summary_screen.dart';
import 'package:TestyUDT/widgets/question_item_exam.dart';
import 'package:TestyUDT/widgets/raised_button_udt.dart';
import 'package:flutter/material.dart';

class ExamScreen extends StatelessWidget {

  static const routeName = '/categories/exam';


  void endExam(BuildContext context) {
    int score = 0;
    DUMMY_QUESTIONS.forEach((element) {
      if(element.qivenAnswerIndex == element.correctAnswerIndex){
        score++;
      }
    });
    print('score: $score');
    Navigator.of(context)
        .pushNamed(ExamResultSummaryScreen.routeName, arguments: {
        'total' : DUMMY_QUESTIONS.length,
        'score' : score
        });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 25,
        ),
        Container(
            height: 30,
            child: Text(
              '00:00',
              style: TextStyle(fontSize: 28),
            )),
        Container(
          height: MediaQuery.of(context).size.height - 28 - 25 - 2,
          child: ListView(children: <Widget>[
            ...DUMMY_QUESTIONS
                .map((e) => QuestionItemExam(
                      question: e.question,
                      answers: e.answers,
                      correctAnswerIndex: e.correctAnswerIndex,
                      singleQuestion: e,
                    ))
                .toList(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: RaisedButtonUDT(onPressed: endExam, title: 'Zakończ egzamin'),
            )
          ]),
        ),
      ],
    ));
  }
}



