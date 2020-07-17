import 'package:flutter/material.dart';

class QuestionItemExam extends StatefulWidget {
  final String question;
  final List<String> answers;
  final int correctAnswerIndex;

  const QuestionItemExam(
      {Key key, this.question, this.answers, this.correctAnswerIndex});

  @override
  _QuestionItemExamState createState() => _QuestionItemExamState();
}

class _QuestionItemExamState extends State<QuestionItemExam> {
  int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
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
            Text(widget.question),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 0),
              title: Text(widget.answers[0]),
              leading: Radio(
                value: 1,
                groupValue: selectedRadio,
                onChanged: (val) => setSelectedRadio(val),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 0),
              title: Text(widget.answers[1]),
              leading: Radio(
                value: 2,
                groupValue: selectedRadio,
                onChanged: (val) => setSelectedRadio(val),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 0),
              title: Text(widget.answers[2]),
              leading: Radio(
                value: 3,
                groupValue: selectedRadio,
                onChanged: (val) => setSelectedRadio(val),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 0),
              title: Text(widget.answers[3]),
              leading: Radio(
                value: 4,
                groupValue: selectedRadio,
                onChanged: (val) => setSelectedRadio(val),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
