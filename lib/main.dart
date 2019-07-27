import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());

}
class MyApp extends StatefulWidget {
@override
  State<StatefulWidget> createState() {
    
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
   int _totalScore = 0;
   void restartQuiz() {
     setState(() {
        _totalScore = 0;
       _questionIndex = 0;
       
     });
    
   }
  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
   
      setState(() {
         _questionIndex = _questionIndex + 1;
      });
    }

  @override
  Widget build(BuildContext context) {
  
    var questions = [
      {
        'questionText': 'What/s your favorite color?',
        'answers': [ { 'text': 'Black', 'score': 10 }, { 'text': 'White', 'score': 5}, { 'text': 'Blue', 'score': 9}]
      },
      {
        'questionText': 'What/s your favorite Animal?',
        'answers': [ { 'text': 'Rabbit', 'score': 10 }, { 'text': 'Parrot', 'score': 12 }, {'text': 'Bear', 'score': 2}]
      },
      {
        'questionText': 'What/s your favorite Bird?',
        'answers': [ { 'text': 'Spparow', 'score': 20} , { 'text': 'Peigeon', 'score': 3}, {'text': 'Parrot', 'score': 1}]
      }
    ];
    
    return MaterialApp(home: Scaffold(appBar: AppBar( title: Text('My First App'),
    
    ),
    body: _questionIndex < questions.length ? Quiz(questionIndex: _questionIndex,  questions: questions, answerQuestions: _answerQuestion): Result(_totalScore, restartQuiz)
    ),
    );
  }
}