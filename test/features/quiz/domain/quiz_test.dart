import 'package:flutter_test/flutter_test.dart';
import 'package:quiz/features/quiz/domain/question.dart';
import 'package:quiz/features/quiz/domain/quiz.dart';

void main() {
  Quiz createOneQuestionQuiz() {
    const quiz = Quiz();
    quiz.add(const Question('What is 2+2?', ['1', '2', '3', '4']));
    return quiz;
  }

  test('Newly created Quiz should be empty', () {
    const quiz = Quiz();
    expect(quiz.isEmpty, true);
  });

  test('Adding first Question to Quiz should make it not empty', () {
    final quiz = createOneQuestionQuiz();
    expect(quiz.isEmpty, false);
  });

  test('Adding two Questions to Quiz should make it length equal to two', () {
    final quiz = createOneQuestionQuiz();
    quiz.add(const Question('What is 2*2?', ['1', '2', '3', '4']));
    expect(quiz.length, 2);
  });

  test('Quizzes with equal Questions should be equal', () {
    final quiz1 = createOneQuestionQuiz();
    const quiz2 = Quiz();
    quiz2.add(const Question('What is 2+2?', ['1', '2', '3', '4']));
    expect(quiz1, quiz2);
  });

  test('Quizzes with unequal Questions should be unequal', () {
    final quiz1 = createOneQuestionQuiz();
    const quiz2 = Quiz();
    quiz2.add(const Question('What is 2*2?', ['1', '2', '3', '4']));
    expect(quiz1, isNot(quiz2));
  });

  test('currentQuestion is the first question when none are answered', () {
    const quiz = Quiz();
    const question = Question('What is 2+2?', ['1', '2', '3', '4']);
    quiz.add(question);
    expect(quiz.currentQuestion, question);
  });
}
