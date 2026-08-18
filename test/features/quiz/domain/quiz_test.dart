import 'package:flutter_test/flutter_test.dart';
import 'package:quiz/features/quiz/domain/answer.dart';
import 'package:quiz/features/quiz/domain/question.dart';
import 'package:quiz/features/quiz/domain/quiz.dart';

import 'question_test.dart';

Quiz createOneQuestionQuiz() {
  return Quiz([createTwoPlusTwoQuestion()]);
}

void main() {
  group('equality', () {
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
  });

  group('isEmpty', () {
    test('Newly created Quiz without questions should be empty', () {
      const quiz = Quiz();
      expect(quiz.isEmpty, equals(true));
    });

    test(
      'Newly created Quiz with questions should make it not empty',
      () {
        final quiz = createOneQuestionQuiz();
        expect(quiz.isEmpty, equals(false));
      },
    );
  });

  test('Adding two Questions to Quiz should make it length equal to two', () {
    Quiz quiz = createOneQuestionQuiz();
    quiz = quiz.add(createTwoPlusTwoQuestion());
    expect(quiz.length, equals(2));
  });

  group('currentQuestion', () {
    final unansweredQuestion1 = createTwoPlusTwoQuestion();
    final unansweredQuestion2 = createTwoTimesTwoQuestion();
    final answeredQuestion1 = unansweredQuestion1.answerWith(
      const Answer('4', isCorrect: true),
    );
    final answeredQuestion2 = unansweredQuestion2.answerWith(
      const Answer('4', isCorrect: true),
    );
    test(
      'returns null if quiz is empty',
      () {
        const quiz = Quiz();
        expect(quiz.currentQuestion, isNull);
      },
    );

    test('returns first question if none are answered', () {
      final quiz = Quiz([unansweredQuestion1, unansweredQuestion2]);
      expect(quiz.currentQuestion, unansweredQuestion1);
    });

    test('returns second question if first is answered', () {
      final quiz = Quiz([answeredQuestion1, unansweredQuestion2]);
      expect(quiz.currentQuestion, unansweredQuestion2);
    });

    test('returns null if all questions are answered', () {
      final quiz = Quiz([answeredQuestion1, answeredQuestion2]);
      expect(quiz.currentQuestion, isNull);
    });
  });
}
