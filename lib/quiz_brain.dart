import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question('About 36 and 42 islands make up New York City?', true),
    Question('Only one capital exists in South Africa', false),
    Question('The tallest mountain in the world is Mount Everest', true),
    Question('The Mississippi and the Nile are the two longest rivers in the world', false),
    Question('California is home to the “Desert of Death.”', false),
    Question('Is it illegal to marry Kashmiri women?', true),
    Question(
        'The 31.5-mile-long Chunnel connects England and France',
        true),
    Question(' The largest ocean in the world is the Atlantic Ocean', false),
    Question(
        '13,171 miles is how far the Great Wall of China stretches in total.',
        false),
    Question('The world’s largest island is Greenland', true),
    Question('The world’s longest coastline is in China', false),
    Question(
        'South America has more nations than Africa has.',
        false),
    Question(
        'Of all the states in the union, Alaska has the most active volcanoes',
        true)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String? getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool? getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool? isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}