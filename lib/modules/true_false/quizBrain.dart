import 'package:multi_quiz_app/modules/true_false/question.dart';

class QuizBrain {
  int _questionNum = 0;

  final List<Question> _questionBank = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bonse are on the feet.', true),
    Question('You can lead a cow down stairs but not up stairs.', true),
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
  ];

  String getQuestionText() {
    return _questionBank[_questionNum].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNum].questionAnswer;
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
