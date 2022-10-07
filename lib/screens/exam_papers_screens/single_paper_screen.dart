import 'package:djal_auto/models/option_model.dart';
import 'package:djal_auto/models/paper_model.dart';
import 'package:djal_auto/models/question_model.dart';
import 'package:djal_auto/screens/exam_papers_screens/result_screen.dart';
import 'package:djal_auto/widget/question_list_widget.dart';
import 'package:djal_auto/widget/question_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../generated/l10n.dart';
import '../../utils/constans.dart';
import '../root_screen.dart';

class SinglePaperScreen extends StatefulWidget {
  final PaperModel paper;
  const SinglePaperScreen({super.key, required this.paper});

  @override
  State<SinglePaperScreen> createState() => _SinglePaperScreenState();
}

class _SinglePaperScreenState extends State<SinglePaperScreen> {
  int indexPage = 1;
  bool isEnded = false;
  int counter = 0;
  int score = 0;
  double nextPage = 1;
  late PageController controller;
  late QuestionModel question;

  @override
  void initState() {
    super.initState();

    controller = PageController();
    question = widget.paper.questions.first;
    for (QuestionModel question in widget.paper.questions) {
      question.options.shuffle();
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(systemNavigationBarColor: kBackgroundColor),
    );

    void onPressedIconBack(BuildContext context) {
      setState(() {
        counter = 0;
        score = 0;
      });
      showDialog<bool>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          icon: const Icon(
            Icons.warning_amber_outlined,
            color: kPrimaryColor,
          ),
          title: Text(S.of(context).warning_alert),
          content: Text(S.of(context).warning_alert_content),
          actions: [
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RootScreen(),
                  ),
                );
              },
              child: Text(S.of(context).action_exit),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: Text(S.of(context).action_stay),
            ),
            const SizedBox(width: 1),
          ],
        ),
      );
    }

    void nextQuestion({required int index, bool jump = false}) {
      setState(() {
        nextPage = controller.page! + 1;
        indexPage = index ?? nextPage.toInt();
        question = widget.paper.questions[indexPage];
      });

      if (jump) {
        controller.jumpToPage(indexPage);
      }
    }

    void selectOption(OptionModel option) {
      if (question.isLocked) {
        return;
      } else {
        setState(
          () {
            counter++;
            question.isLocked = true;
            question.selectedOption = option;
            if (question.selectedOption?.isCorrect == true) {
              score++;
            }
          },
        );
        if (counter == widget.paper.questions.length) {
          isEnded = true;
        }
      }
    }

    return WillPopScope(
      onWillPop: () async {
        onPressedIconBack(context);
        return false;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_rounded),
            onPressed: () {
              onPressedIconBack(context);
            },
          ),
          title: Text(S.of(context).exam_paper + widget.paper.index.toString(),
              style: kAppBarTS),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${S.of(context).question}$indexPage',
                    style: kBody1TS,
                  ),
                  Text(
                    '20:00',
                    style: kBody1TS,
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            QuestionListWidget(
              questions: widget.paper.questions,
              question: question,
              onTap: (index) => nextQuestion(index: index, jump: true),
            ),
            Flexible(
              child: QuestionWidget(
                  controller: controller,
                  paper: widget.paper,
                  onChangeQuestion: (index) => nextQuestion(index: index),
                  onClickedOption: selectOption),
            ),
          ],
        ),
        floatingActionButton: question.isLocked == true
            ? FloatingActionButton.extended(
                backgroundColor: isEnded ? kCorrectColor : kPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                onPressed: isEnded
                    ? () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResultScreen(
                              score: score,
                              outOf: widget.paper.questions.length,
                            ),
                          ),
                        );
                      }
                    : () {
                        for (var item in widget.paper.questions.reversed) {
                          if (item.selectedOption == null) {
                            controller.animateToPage(
                                widget.paper.questions.indexOf(item),
                                duration: const Duration(milliseconds: 750),
                                curve: Curves.decelerate);
                          }
                        }
                      },
                icon: isEnded
                    ? const Icon(Icons.check_outlined)
                    : const Icon(Icons.arrow_forward_rounded),
                label: Text(isEnded
                    ? S.of(context).action_see_results
                    : S.of(context).action_next_question),
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}
