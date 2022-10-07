import 'package:djal_auto/models/option_model.dart';
import 'package:djal_auto/models/question_model.dart';
import 'package:flutter/material.dart';

import '../utils/constans.dart';

class OptionsWidget extends StatelessWidget {
  final QuestionModel question;
  final ValueChanged<OptionModel> onTapOption;

  const OptionsWidget({
    super.key,
    required this.question,
    required this.onTapOption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        separatorBuilder: (context, index) => const SizedBox(height: 8),
        itemBuilder: (context, index) {
          return buildOption(
            context,
            question.options[index],
          );
        },
        itemCount: question.options.length,
      ),
    );
  }

  Widget buildOption(BuildContext context, OptionModel option) {
    final color = getColorForOption(option, question);

    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () => onTapOption(option),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            buildAnswer(option),
            question.selectedOption != null
                ? buildSolution(question.selectedOption!, option)
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }

  Widget buildAnswer(OptionModel option) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          option.text,
          style: kBody1TS.copyWith(color: kOnPrimaryColor),
        ),
      );

  Widget buildSolution(OptionModel solution, OptionModel answer) {
    if (solution == answer) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Container(
              color: kSurfaceColor,
              height: 3,
            ),
          ),
          Text(
            '${question.solution}',
          ),
        ],
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  Color getColorForOption(OptionModel option, QuestionModel question) {
    final isSelected = option == question.selectedOption;

    if (!isSelected) {
      return kSurfaceColor;
    } else {
      return option.isCorrect ? kCorrectColor : kErrorColor;
    }
  }
}
