import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/quiz_model.dart';
import '../widgets/question_card.dart';
import '../widgets/primary_button.dart';

class QuizScreen extends StatelessWidget {
  static const routeName = '/quiz';
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final quiz = Provider.of<QuizModel>(context);
    final current = quiz.questions[quiz.currentIndex];
    final mq = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Kuis - ${quiz.userName}'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(mq.size.width * 0.04),
          child: Column(
            children: [
              LinearProgressIndicator(value: (quiz.currentIndex + 1) / quiz.total),
              const SizedBox(height: 12),
              Expanded(
                child: QuestionCard(
                  question: current,
                  questionIndex: quiz.currentIndex,
                  onSelect: (idx) => quiz.answerQuestion(idx),
                  selectedIndex: quiz.answers[quiz.currentIndex],
                ),
              ),
              Row(
                children: [
                  if (quiz.currentIndex > 0)
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () => quiz.previous(),
                        child: const Text('Sebelumnya'),
                      ),
                    ),
                  if (quiz.currentIndex > 0) const SizedBox(width: 8),
                  Expanded(
                    child: PrimaryButton(
                      text: quiz.currentIndex == quiz.total - 1 ? 'Selesai' : 'Berikutnya',
                      onPressed: () {
                        if (quiz.currentIndex == quiz.total - 1) {
                          final score = quiz.calculateScore();
                          showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              title: Text('Hasil - ${quiz.userName}'),
                              content: Text('Skor Anda: $score / ${quiz.total}'),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: const Text('OK'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    quiz.reset();
                                    Navigator.of(context).pop();
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('Ulangi'),
                                ),
                              ],
                            ),
                          );
                        } else {
                          quiz.next();
                        }
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
