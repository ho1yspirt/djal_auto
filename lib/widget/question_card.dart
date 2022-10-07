import 'package:djal_auto/models/question_model.dart';
import 'package:djal_auto/widget/options_widget.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import '../models/option_model.dart';
import '../utils/constans.dart';

class QuestionCard extends StatelessWidget {
  final QuestionModel question;
  final ValueChanged<OptionModel> onClickedOption;

  const QuestionCard({
    super.key,
    required this.question,
    required this.onClickedOption,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: kBackgroundColor,
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: question.image != ''
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          '${question.image}',
                          fit: BoxFit.fitWidth,
                        ),
                      )
                    : Container(
                        decoration: BoxDecoration(
                          color: kSurfaceColor,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        height: 50,
                        child: Center(
                            child: Text(S.of(context).question_without_image)),
                      ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  question.question,
                  style: kHeadline3TS,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
        Flexible(
          child:
              OptionsWidget(question: question, onTapOption: onClickedOption),
        ),
      ],
    );
  }
}
