// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz/features/quiz/domain/question.dart';

part 'quiz.freezed.dart';

@freezed
abstract class Quiz with _$Quiz {
  const Quiz._();

  const factory Quiz([@Default(<Question>[]) List<Question> _questions]) =
      _Quiz;

  Question get currentQuestion => _questions.first;
  int get length => _questions.length;
  bool get isEmpty => _questions.isEmpty;

  Quiz add(Question question) =>
      copyWith(_questions: [..._questions, question]);
}
