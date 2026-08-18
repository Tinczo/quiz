import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz/features/quiz/domain/question.dart';
// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';

part 'quiz.freezed.dart';

@freezed
abstract class Quiz with _$Quiz {
  const Quiz._();

  const factory Quiz([@Default(<Question>[]) List<Question> questions]) = _Quiz;

  Question? get currentQuestion {
    return questions.firstWhereOrNull((q) => !q.isAnswered);
  }

  int get length => questions.length;
  bool get isEmpty => questions.isEmpty;

  Quiz add(Question question) => copyWith(questions: [...questions, question]);
}
