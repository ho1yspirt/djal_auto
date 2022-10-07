import 'package:djal_auto/models/paper_model.dart';
import 'package:djal_auto/models/question_model.dart';
import 'package:djal_auto/utils/constans.dart';
import 'package:djal_auto/widget/single_paper_button.dart';
import 'package:flutter/material.dart';
import '../../generated/l10n.dart';
import '../../models/option_model.dart';
import 'single_paper_screen.dart';
import "dart:math";

class ExamPapersScreen extends StatefulWidget {
  static String id = 'exam_papers_screen';
  const ExamPapersScreen({Key? key}) : super(key: key);

  @override
  State<ExamPapersScreen> createState() => _ExamPapersScreenState();
}

class _ExamPapersScreenState extends State<ExamPapersScreen> {
  final _random = Random();

  final List<PaperModel> papers = [
    PaperModel(
      index: 1,
      questions: [
        QuestionModel(
          id: '0',
          image: 'https://s.drom.ru/i24227/pdd/tickets/2016/1542608234.jpg',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
        QuestionModel(
          id: '0',
          image: 'https://s.drom.ru/i24227/pdd/tickets/2016/1542608234.jpg',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
        QuestionModel(
          id: '0',
          image: 'https://s.drom.ru/i24227/pdd/tickets/2016/1542608234.jpg',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
        QuestionModel(
          id: '0',
          image: '',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
        QuestionModel(
          id: '0',
          image: '',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
        QuestionModel(
          id: '0',
          image: 'https://s.drom.ru/i24227/pdd/tickets/2016/1542608234.jpg',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
        QuestionModel(
          id: '0',
          image: 'https://s.drom.ru/i24227/pdd/tickets/2016/1542608234.jpg',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
        QuestionModel(
          id: '0',
          image: 'https://s.drom.ru/i24227/pdd/tickets/2016/1542608234.jpg',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
        QuestionModel(
          id: '0',
          image: 'https://s.drom.ru/i24227/pdd/tickets/2016/1542608234.jpg',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
      ],
    ),
    PaperModel(
      index: 2,
      questions: [
        QuestionModel(
          id: '0',
          image: 'https://s.drom.ru/i24227/pdd/tickets/2016/1542608234.jpg',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
        QuestionModel(
          id: '0',
          image: 'https://s.drom.ru/i24227/pdd/tickets/2016/1542608234.jpg',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
        QuestionModel(
          id: '0',
          image: 'https://s.drom.ru/i24227/pdd/tickets/2016/1542608234.jpg',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
        QuestionModel(
          id: '0',
          image: 'https://s.drom.ru/i24227/pdd/tickets/2016/1542608234.jpg',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
        QuestionModel(
          id: '0',
          image: 'https://s.drom.ru/i24227/pdd/tickets/2016/1542608234.jpg',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
        QuestionModel(
          id: '0',
          image: 'https://s.drom.ru/i24227/pdd/tickets/2016/1542608234.jpg',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
      ],
    ),
    PaperModel(
      index: 3,
      questions: [
        QuestionModel(
          id: '0',
          image: 'https://s.drom.ru/i24227/pdd/tickets/2016/1542608234.jpg',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
        QuestionModel(
          id: '0',
          image: 'https://s.drom.ru/i24227/pdd/tickets/2016/1542608234.jpg',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
        QuestionModel(
          id: '0',
          image: 'https://s.drom.ru/i24227/pdd/tickets/2016/1542608234.jpg',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
        QuestionModel(
          id: '0',
          image: 'https://s.drom.ru/i24227/pdd/tickets/2016/1542608234.jpg',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
        QuestionModel(
          id: '0',
          image: 'https://s.drom.ru/i24227/pdd/tickets/2016/1542608234.jpg',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
        QuestionModel(
          id: '0',
          image: 'https://s.drom.ru/i24227/pdd/tickets/2016/1542608234.jpg',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
      ],
    ),
    PaperModel(
      index: 4,
      questions: [
        QuestionModel(
          id: '0',
          image: 'https://s.drom.ru/i24227/pdd/tickets/2016/1542608234.jpg',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
        QuestionModel(
          id: '0',
          image: 'https://s.drom.ru/i24227/pdd/tickets/2016/1542608234.jpg',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
        QuestionModel(
          id: '0',
          image: 'https://s.drom.ru/i24227/pdd/tickets/2016/1542608234.jpg',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
        QuestionModel(
          id: '0',
          image: 'https://s.drom.ru/i24227/pdd/tickets/2016/1542608234.jpg',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
        QuestionModel(
          id: '0',
          image: 'https://s.drom.ru/i24227/pdd/tickets/2016/1542608234.jpg',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
        QuestionModel(
          id: '0',
          image: 'https://s.drom.ru/i24227/pdd/tickets/2016/1542608234.jpg',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
      ],
    ),
    PaperModel(
      index: 6,
      questions: [
        QuestionModel(
          id: '0',
          image: 'https://s.drom.ru/i24227/pdd/tickets/2016/1542608234.jpg',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
        QuestionModel(
          id: '0',
          image: 'https://s.drom.ru/i24227/pdd/tickets/2016/1542608234.jpg',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
        QuestionModel(
          id: '0',
          image: 'https://s.drom.ru/i24227/pdd/tickets/2016/1542608234.jpg',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
        QuestionModel(
          id: '0',
          image: 'https://s.drom.ru/i24227/pdd/tickets/2016/1542608234.jpg',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
        QuestionModel(
          id: '0',
          image: 'https://s.drom.ru/i24227/pdd/tickets/2016/1542608234.jpg',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
        QuestionModel(
          id: '0',
          image: 'https://s.drom.ru/i24227/pdd/tickets/2016/1542608234.jpg',
          question: 'this question',
          options: [
            const OptionModel(
              text: 'correfgbfgbct',
              isCorrect: true,
            ),
            const OptionModel(
              text: 'dgfdfthgnhfm',
              isCorrect: false,
            ),
            const OptionModel(
              text:
                  'thisfgbfgb is answer Запрещается эксплуатация мототранспортных средств (категории L), если остаточная глубина рисунка протектора шин (при отсутствии индикаторов износа) составляет не более',
              isCorrect: false,
            ),
          ],
          solution:
              'Запрещается эксплуатация мототранспортных средств (категории L), если остаточная',
        ),
      ],
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            automaticallyImplyLeading: false,
            title: Text(
              S.of(context).exam_papers,
              style: kAppBarTS,
            ),
            actions: [
              PopupMenuButton(
                onSelected: (result) {
                  if (result == 0) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SinglePaperScreen(
                          paper: papers[_random.nextInt(papers.length)],
                        ),
                      ),
                    );
                  }
                },
                itemBuilder: ((context) => [
                      PopupMenuItem(
                        value: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(Icons.shuffle_rounded),
                            Text(
                              S.of(context).action_pick_random,
                            )
                          ],
                        ),
                      ),
                    ]),
              ),
            ],
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).choose_paper,
                    style: kHeadline2TS,
                  ),
                  Text(
                    S.of(context).category_ABM,
                    style: kBody1TS.copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, int index) {
                  return SinglePaperButton(
                    index: papers[index].index,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SinglePaperScreen(
                            paper: papers[index],
                          ),
                        ),
                      );
                    },
                  );
                },
                childCount: papers.length,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 100),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        onPressed: () {},
        icon: const Icon(Icons.rule_rounded),
        label: Text(S.of(context).try_exam),
      ),
    );
  }
}
