import './Questions.dart';

class Quiz {
  List<Questions> _questions;
  int _currQuestIndex = -1;
  int _score = 0;
  Quiz(this._questions){
    _questions.shuffle();
  }

  List<Questions> get questions => _questions;
  int get curQuestion => _currQuestIndex+1;
  int get score => _score;
  int get Length =>  _questions.length+1;
  Questions get nextQuestion{
    _currQuestIndex++;
    if(_currQuestIndex >= _questions.length ) return null;
    return _questions[_currQuestIndex];
  }
  void answer(bool isCorrect){
    if(isCorrect) _score++;
  }

}