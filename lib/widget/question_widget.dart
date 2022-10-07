import 'package:djal_auto/models/option_model.dart';
import 'package:djal_auto/models/paper_model.dart';
import 'package:djal_auto/widget/question_card.dart';
import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  final PaperModel paper;
  final PageController controller;
  final ValueChanged<int> onChangeQuestion;
  final ValueChanged<OptionModel> onClickedOption;

  const QuestionWidget({
    super.key,
    required this.controller,
    required this.paper,
    required this.onChangeQuestion,
    required this.onClickedOption,
  });

  @override
  Widget build(BuildContext context) => PageView.builder(
        controller: controller,
        onPageChanged: onChangeQuestion,
        itemBuilder: (context, index) {
          final question = paper.questions[index];

          return QuestionCard(
            question: question,
            onClickedOption: onClickedOption,
          );
        },
        itemCount: paper.questions.length,
      );
}
