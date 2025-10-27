import 'package:flutter/material.dart';
import '../data/questions.dart';
import 'option_tile.dart';

class QuestionCard extends StatelessWidget {
  final Question question;
  final int questionIndex;
  final Function(int) onSelect;
  final int? selectedIndex;

  const QuestionCard({
    super.key,
    required this.question,
    required this.questionIndex,
    required this.onSelect,
    this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: EdgeInsets.all(w * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Pertanyaan ${questionIndex + 1}', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            Text(question.text, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 16),
            ...List.generate(question.options.length, (i) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: OptionTile(
                  text: question.options[i],
                  index: i,
                  isSelected: selectedIndex == i,
                  onTap: () => onSelect(i),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
