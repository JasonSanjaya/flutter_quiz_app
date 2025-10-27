import 'package:flutter/material.dart';
import '../data/questions.dart';

class QuizModel extends ChangeNotifier {
  String userName = '';
  int currentIndex = 0;
  final Map<int, int> answers = {}; // questionIndex -> selectedOptionIndex

  List<Question> get questions => sampleQuestions;
  int get total => questions.length;

  void setName(String name) {
    userName = name;
    notifyListeners();
  }

  void answerQuestion(int optionIndex) {
    answers[currentIndex] = optionIndex;
    notifyListeners();
  }

  void next() {
    if (currentIndex < total - 1) {
      currentIndex++;
      notifyListeners();
    }
  }

  void previous() {
    if (currentIndex > 0) {
      currentIndex--;
      notifyListeners();
    }
  }

  int calculateScore() {
    int score = 0;
    for (int i = 0; i < questions.length; i++) {
      final q = questions[i];
      final selected = answers[i];
      if (selected != null && q.correctIndex == selected) score++;
    }
    return score;
  }

  void reset() {
    userName = '';
    currentIndex = 0;
    answers.clear();
    notifyListeners();
  }
}
