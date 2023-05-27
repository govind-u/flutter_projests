import 'question.dart';

class Quizbrain {
  int _questionnumber = 0;
  // ignore: prefer_final_fields
  List<Question> _questionbank = [
    Question(
        questiontext: 'Some cats are actually allergic to humans',
        questionanswer: true),
    Question(
        questiontext: 'You can lead a cow down stairs but not up stairs.',
        questionanswer: false),
    Question(
        questiontext:
            'Approximately one quarter of human bones are in the feet.',
        questionanswer: true),
    Question(questiontext: 'A slug\'s blood is green.', questionanswer: true),
    Question(
        questiontext: 'Buzz Aldrin\'s mother\'s maiden name was "Moon".',
        questionanswer: true),
    Question(
        questiontext: 'It is illegal to pee in the Ocean in Portugal.',
        questionanswer: true),
    Question(
        questiontext:
            'No piece of square dry paper can be folded in half more than 7 times.',
        questionanswer: false),
    Question(
        questiontext:
            'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        questionanswer: true),
    Question(
        questiontext:
            'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        questionanswer: false),
    Question(
        questiontext:
            'The total surface area of two human lungs is approximately 70 square metres.',
        questionanswer: true),
    Question(
        questiontext: 'Google was originally called "Backrub".',
        questionanswer: true),
    Question(
        questiontext:
            'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        questionanswer: true),
    Question(
        questiontext:
            'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        questionanswer: true),
  ];
  String getquestiontext() {
    return _questionbank[_questionnumber].questiontext;
  }

  bool getcorrectanswer() {
    return _questionbank[_questionnumber].questionanswer;
  }

  nextquestion() {
    if (_questionnumber < _questionbank.length - 1) {
      _questionnumber++;
    }
  }

  bool isfinished() {
    if (_questionnumber >= _questionbank.length - 1) {
      // ignore: avoid_print
      print('returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionnumber = 0;
  }
}
