import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int resultScore;
  final Function restartQuiz;

  Result(this.resultScore, this.restartQuiz );
  String get resultPhase {
    String resultText;
    if(resultScore <= 8) {
      resultText = "Not Bad!";
    }
    else if(resultScore >= 20) {
      resultText = "Awesome Man!";
    }
    else {
      resultText = "Better Luck next time!";
    }
    return resultText;

  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
          
        resultPhase,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center
       

      ),
      
    FlatButton (
      child: Text('Restart It Again'),
      padding: EdgeInsets.all(8.0),
      disabledColor: Colors.grey,
      disabledTextColor: Colors.white,
      splashColor: Colors.blue,
     onPressed: restartQuiz
     ),
        ],
    )
    );
  }
}