import 'package:flutter_test/flutter_test.dart';
import 'package:quiz/features/quiz/domain/quiz.dart';

import 'question_test.dart';

Quiz createOneQuestionQuiz() {
  return Quiz([createTwoPlusTwoQuestion()]);
}

void main() {
  test('Newly created Quiz should be empty', () {
    const quiz = Quiz();
    expect(quiz.isEmpty, equals(true));
  });

  test('Adding first Question to Quiz should make it not empty', () {
    final quiz = createOneQuestionQuiz();
    expect(quiz.isEmpty, equals(false));
  });

  test('Adding two Questions to Quiz should make it length equal to two', () {
    Quiz quiz = createOneQuestionQuiz();
    quiz = quiz.add(createTwoPlusTwoQuestion());
    expect(quiz.length, equals(2));
  });

  test('Quizzes with equal Questions should be equal', () {
    final quiz1 = createOneQuestionQuiz();
    Quiz quiz2 = const Quiz();
    quiz2 = quiz2.add(createTwoPlusTwoQuestion());
    expect(quiz1, equals(quiz2));
  });

  test('Quizzes with unequal Questions should be unequal', () {
    final quiz1 = createOneQuestionQuiz();
    final quiz2 = Quiz([createTwoPlusTwoCorrectlyAnsweredQuestion()]);
    expect(quiz1, isNot(quiz2));
  });

  test('currentQuestion is the first question when none are answered', () {
    Quiz quiz = const Quiz();
    final question = createTwoPlusTwoQuestion();
    quiz = quiz.add(question);
    expect(quiz.currentQuestion, equals(question));
  });
}
