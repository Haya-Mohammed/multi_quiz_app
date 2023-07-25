import 'package:multi_quiz_app/modules/multiple_choice/questionMCQ.dart';

class QuizBrainMCQ {
  int _questionNum = 0;

  final List<QuestionMCQ> _questionBank = [
    QuestionMCQ(
      'You can lead a cow down stairs but not up stairs.',
      1,
      ['always', 'never', 'sometimes'],
    ),
    QuestionMCQ(
      'Approximately one quarter of human bonse are on the feet.',
      0,
      ['agree', 'disagree', 'not sure'],
    ),
  ];

  String getQuestionText() {
    return _questionBank[_questionNum].questionText;
  }

  int getQuestionAnswer() {
    return _questionBank[_questionNum].questionAnswer;
  }

  List<String> getQuestionOptions() {
    return _questionBank[_questionNum].options;
  }

  void nextQuestion() {
    _questionNum++;
  }

  bool isFinished() {
    if (_questionNum >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNum = 0;
  }
}
