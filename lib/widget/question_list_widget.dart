import 'package:djal_auto/models/question_model.dart';
import 'package:flutter/material.dart';

import '../utils/constans.dart';

class QuestionListWidget extends StatelessWidget {
  final List<QuestionModel> questions;
  final QuestionModel question;
  final ValueChanged<int> onTap;

  const QuestionListWidget({
    super.key,
    required this.questions,
    required this.question,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 16),
      child: SizedBox(
        height: 50,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final isSelected = question == questions[index];

              return buildQuestionListItem(
                index: index,
                isSelected: isSelected,
              );
            },
            itemCount: questions.length),
      ),
    );
  }

  Widget buildQuestionListItem({
    required int index,
    required bool isSelected,
  }) {
    final color = questions[index].selectedOption?.isCorrect == true
        ? kCorrectColor
        : questions[index].selectedOption?.isCorrect == false
            ? kErrorColor
            : isSelected
                ? kSurfaceColor
                : Colors.transparent;
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        splashFactory: InkSparkle.splashFactory,
        onTap: () => onTap(index),
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(width: 3, color: color),
          ),
          child: Center(
            child: Text(
              (index + 1).toString(),
            ),
          ),
        ),
      ),
    );
  }
}
