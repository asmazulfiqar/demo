import 'package:flutter/material.dart';

class QuestionText extends StatefulWidget {
  final String _question;
  final int _questionNumber;

  QuestionText(this._question, this._questionNumber);

  @override
  State createState() => new QuestionTextState();
}

class QuestionTextState extends State<QuestionText>
    with SingleTickerProviderStateMixin {
  Animation<double> _fontsizeAnimation;
  AnimationController _fontsizeAnimationControler;
  @override
  void initState() {
    super.initState();
    _fontsizeAnimationControler = new AnimationController(duration: new Duration(milliseconds: 500), vsync: this);
    _fontsizeAnimation = new CurvedAnimation(parent: _fontsizeAnimationControler, curve: Curves.linear);
    _fontsizeAnimation.addListener(() => this.setState((){}));
    _fontsizeAnimationControler.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
        color: Colors.white,
        child: new Padding(
          padding: new EdgeInsets.symmetric(vertical: 20.0),
          child: new Center(
              child: Text("Question number is : " +
                  widget._questionNumber.toString() +
                  " " +
                  widget._question +
                  " ? ", 
              style: new TextStyle(fontSize: _fontsizeAnimation.value*15))),
        ));
  }
}
