import 'package:TestyUDT/dummy_data.dart';
import 'package:TestyUDT/widgets/question_item_exam.dart';
import 'package:flutter/material.dart';

class ExamScreen extends StatelessWidget {
  static const routeName = '/categories/exam';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('Exam'),
            Spacer(),
            Text('30:00', style: TextStyle(color: Colors.red),)
          ],
        ),
      ),
      body: ListView(children: <Widget>[
        ...DUMMY_QUESTIONS
            .map((e) => QuestionItemExam(
                  question: e.question,
                  answers: e.answers,
                  correctAnswerIndex: e.correctAnswerIndex,
                ))
            .toList(),
        RaisedButton(onPressed: () {}, child: Text('Zakoncz egzamin'))
      ]),
    );
  }
}
