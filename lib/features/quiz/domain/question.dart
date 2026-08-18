import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';

@freezed
abstract class Question with _$Question {
  const factory Question(
    String text,
    List<String> answers,
  ) = _Question;
}
