import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';

@freezed
abstract class Question with _$Question {
  const Question._();

  const factory Question(
    String text,
    List<String> answers, {
    required int indexOfCorrectAnswer,
    int? indexOfChoosenAnswer,
  }) = _Question;

  bool get isAnsweredCorrectly => indexOfCorrectAnswer == indexOfChoosenAnswer;
  bool get isAnswered => indexOfChoosenAnswer != null;
}
