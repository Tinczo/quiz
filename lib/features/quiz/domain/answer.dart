import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer.freezed.dart';

@freezed
abstract class Answer with _$Answer {
  const factory Answer(String text, {required bool isCorrect}) = _Answer;
}
