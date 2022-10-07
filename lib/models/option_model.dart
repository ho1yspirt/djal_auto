class OptionModel {
  final String text;
  final bool isCorrect;

  const OptionModel({required this.text, required this.isCorrect});

  @override
  String toString() {
    return 'OptionModel(text: $text, isCorrect: $isCorrect)';
  }
}
