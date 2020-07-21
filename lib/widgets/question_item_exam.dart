import 'package:TestyUDT/models/question.dart';
import 'package:flutter/material.dart';

class QuestionItemExam extends StatefulWidget {
  final String question;
  final List<String> answers;
  final int correctAnswerIndex;
  Question singleQuestion;

  QuestionItemExam({
    this.question,
    this.answers,
    this.correctAnswerIndex,
    this.singleQuestion,
  });

  @override
  _QuestionItemExamState createState() => _QuestionItemExamState();
}

class _QuestionItemExamState extends State<QuestionItemExam> {
  int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = -1;
  }

  setSelectedRadio(int val) {
    setState(() {
      widget.singleQuestion.qivenAnswerIndex = val;
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              widget.question,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 0),
              title: Text(widget.answers[0],
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300)),
              leading: Radio(
                value: 0,
                groupValue: widget.singleQuestion.qivenAnswerIndex != null
                    ? widget.singleQuestion.qivenAnswerIndex
                    : -1,
                onChanged: (val) => setSelectedRadio(val),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 0),
              title: Text(widget.answers[1],
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300)),
              leading: Radio(
                value: 1,
                groupValue: widget.singleQuestion.qivenAnswerIndex != null
                    ? widget.singleQuestion.qivenAnswerIndex
                    : -1,
                onChanged: (val) => setSelectedRadio(val),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 0),
              title: Text(widget.answers[2],
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300)),
              leading: Radio(
                value: 2,
                groupValue: widget.singleQuestion.qivenAnswerIndex != null
                    ? widget.singleQuestion.qivenAnswerIndex
                    : -1,
                onChanged: (val) => setSelectedRadio(val),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 0),
              title: Text(widget.answers[3],
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300)),
              leading: Radio(
                value: 3,
                groupValue: widget.singleQuestion.qivenAnswerIndex != null
                    ? widget.singleQuestion.qivenAnswerIndex
                    : -1,
                onChanged: (val) => setSelectedRadio(val),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
