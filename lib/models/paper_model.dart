import 'package:djal_auto/models/question_model.dart';

class PaperModel {
  final int index;
  final List<QuestionModel> questions;

  const PaperModel({required this.index, required this.questions});

  @override
  String toString() {
    return 'PaperModel(index: $index, questions: $questions)';
  }
}
