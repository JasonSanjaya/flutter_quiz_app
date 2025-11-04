import 'package:flutter/material.dart';
import '../data/questions.dart';

class QuizModel extends ChangeNotifier {
  String userName = '';
  int currentIndex = 0;
  final Map<int, int> answers = {}; // no pertanyaan, index jawaban

  List<Question> get questions => sampleQuestions;// untuk ambil pertanyaan 
  int get total => questions.length;//total pertanyaan 

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
    for (int i = 0; i < questions.length; i++) { // loop pertanyaan sampe akhir 
      final q = questions[i];
      final selected = answers[i];// jawaban user 
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
