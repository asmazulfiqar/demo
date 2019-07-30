import 'package:flutter/material.dart';
import './AnswerPage.dart';
import './AnswerStatement.dart';
import './CorrectWrongOverly.dart';

class QuizPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new QuizPageState();
  }
}

class QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column(
          //This is our main page
          children: <Widget>[
           new AnswerButton(true, () => {print("You Answered True")}),
           new QuestionText("Pizza is nice",1),
           new QuestionText("Pizza is nice",1),
           new AnswerButton(false, () => {print("You Answered Flase")})
          ],
        ),
        new CorrectWrongOverly(true)
      ],
    );
  }
}
