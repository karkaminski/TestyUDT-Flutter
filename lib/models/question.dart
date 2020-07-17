import 'package:flutter/material.dart';

class Question {
  final int id;
  final String question;
  final List<String> answers;
  final int correctAnswerIndex;
  int qivenAnswerIndex;

  Question({
    @required this.id,
    @required this.question,
    @required this.answers,
    @required this.correctAnswerIndex,
  });
}
