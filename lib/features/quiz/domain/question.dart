import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz/features/quiz/domain/answer.dart';

part 'question.freezed.dart';

@freezed
abstract class Question with _$Question {
  const Question._();

  const factory Question(
    String text,
    List<Answer> answers, {
    Answer? choosenAnswer,
  }) = _Question;

  bool get isAnsweredCorrectly {
    if (!isAnswered) return false;
    if (!answers.contains(choosenAnswer)) return false;
    return choosenAnswer!.isCorrect;
  }

  bool get isAnswered => choosenAnswer != null;
}
