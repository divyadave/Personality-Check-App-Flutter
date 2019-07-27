import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String,Object>> questions;
  final Function answerQuestions;
  Quiz({ this.questionIndex, this.questions, this.answerQuestions});
  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [

        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((element) {
          return Answer(() => answerQuestions(element['score']), element['text']);
        }).toList()
  
      ],
    );
      
    
  }
}