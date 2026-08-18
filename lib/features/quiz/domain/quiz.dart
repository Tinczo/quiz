import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz/features/quiz/domain/question.dart';

part 'quiz.freezed.dart';

@freezed
abstract class Quiz with _$Quiz {
  const Quiz._();

  const factory Quiz([@Default(<Question>[]) List<Question> questions]) = _Quiz;

  Question get currentQuestion => questions.first;
  int get length => questions.length;
  bool get isEmpty => questions.isEmpty;

  Quiz add(Question question) => copyWith(questions: [...questions, question]);
}
