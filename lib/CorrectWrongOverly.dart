import 'dart:math';
import 'package:flutter/material.dart';

class CorrectWrongOverly extends StatefulWidget {
  final _isCorrect;

  CorrectWrongOverly(this._isCorrect);

  @override
  State createState() => new CorrectWrongOverlyState();
}

class CorrectWrongOverlyState extends State<CorrectWrongOverly>
    with SingleTickerProviderStateMixin {
  Animation<double> _iconAnimation;
  AnimationController _iconAnimationController;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
        duration: new Duration(seconds: 2), vsync: this);
    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController, curve: Curves.bounceOut);
    _iconAnimation.addListener(() => (() {}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.black54,
      child: new InkWell(
        onTap: () => print("JF "+_iconAnimation.value.toString()),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
                decoration: new BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                child: new Transform.rotate(
                    angle: _iconAnimation.value * 2 * pi ,
                    child: new Icon(
                      widget._isCorrect == true ? Icons.done : Icons.clear,
                      size: _iconAnimation.value*80.0,
                    )),
               ),
            new Padding(padding: new EdgeInsets.only(bottom: 20.0)),
            new Text(
              widget._isCorrect == true ? "Correct" : "Wrong",
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
