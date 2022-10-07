import 'package:djal_auto/models/option_model.dart';

class QuestionModel {
  final String? id;
  final String? image;
  final String question;
  final List<OptionModel> options;
  final String? solution;
  bool isLocked;
  OptionModel? selectedOption;

  QuestionModel({
    this.id,
    this.image,
    required this.question,
    required this.options,
    this.solution,
    this.isLocked = false,
    this.selectedOption,
  });

  @override
  String toString() {
    return 'QuestionModel(id: $id, image: $image, question: $question, options: $options, explanation: $solution)';
  }
}
