import 'package:flutter_test/flutter_test.dart';
import 'package:quiz/features/quiz/domain/answer.dart';
import 'package:quiz/features/quiz/domain/question.dart';

Question createTwoPlusTwoQuestion() {
  return const Question(
    'What is 2+2?',
    [
      Answer('1', isCorrect: false),
      Answer('2', isCorrect: false),
      Answer('3', isCorrect: false),
      Answer('4', isCorrect: true),
    ],
  );
}

Question createTwoPlusTwoCorrectlyAnsweredQuestion() {
  return const Question(
    'What is 2+2?',
    [
      Answer('1', isCorrect: false),
      Answer('2', isCorrect: false),
      Answer('3', isCorrect: false),
      Answer('4', isCorrect: true),
    ],
    choosenAnswer: Answer('4', isCorrect: true),
  );
}

Question createTwoPlusTwoIncorrectlyAnsweredQuestion() {
  return const Question(
    'What is 2+2?',
    [
      Answer('1', isCorrect: false),
      Answer('2', isCorrect: false),
      Answer('3', isCorrect: false),
      Answer('4', isCorrect: true),
    ],
  );
}

void main() {
  test('Two questions with same fields should be equal', () {
    final q1 = createTwoPlusTwoQuestion();
    final q2 = createTwoPlusTwoQuestion();
    expect(q1, equals(q2));
  });

  group('isAnswered', () {
    test('isAnswered should return False if choosenAnswer is not set', () {
      final q = createTwoPlusTwoQuestion();
      expect(q.isAnswered, equals(false));
    });

    test('isAnswered should return True if choosenAnswer is set', () {
      final q = createTwoPlusTwoCorrectlyAnsweredQuestion();
      expect(q.isAnswered, equals(true));
    });
  });

  group('isAnsweredCorrectly', () {
    test(
      'isAnsweredCorrectly should return False if question is not answered',
      () {
        final q = createTwoPlusTwoQuestion();
        expect(q.isAnsweredCorrectly, equals(false));
      },
    );

    test(
      'isAnsweredCorrectly should return False if choosen answer is not correct',
      () {
        final q = createTwoPlusTwoIncorrectlyAnsweredQuestion();
        expect(q.isAnsweredCorrectly, equals(false));
      },
    );

    test(
      'isAnsweredCorrectly should return True if choosen answer is correct',
      () {
        final q = createTwoPlusTwoCorrectlyAnsweredQuestion();
        expect(q.isAnsweredCorrectly, equals(true));
      },
    );
    
  });
}
