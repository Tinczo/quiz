import 'package:flutter_test/flutter_test.dart';
import 'package:quiz/features/quiz/domain/question.dart';

Question createTwoPlusTwoQuestion() {
  return const Question('What is 2+2?', [
    '1',
    '2',
    '3',
    '4',
  ], indexOfCorrectAnswer: 3);
}

Question createTwoPlusTwoCorrectlyAnsweredQuestion() {
  return const Question(
    'What is 2+2?',
    ['1', '2', '3', '4'],
    indexOfCorrectAnswer: 3,
    indexOfChoosenAnswer: 3,
  );
}

Question createTwoPlusTwoIncorrectlyAnsweredQuestion() {
  return const Question(
    'What is 2+2?',
    ['1', '2', '3', '4'],
    indexOfCorrectAnswer: 3,
    indexOfChoosenAnswer: 0,
  );
}

void main() {

  test('Two questions with same fields should be equal', () {
    final q1 = createTwoPlusTwoQuestion();
    final q2 = createTwoPlusTwoQuestion();
    expect(q1, equals(q2));
  });

  group('isAnswered', () {
    test(
      'isAnswered should return False if indexOfChoosenAnswer is not set',
      () {
        final q = createTwoPlusTwoQuestion();
        expect(q.isAnswered, equals(false));
      },
    );

    test('isAnswered should return True if indexOfChoosenAnswer is set', () {
      final q = createTwoPlusTwoCorrectlyAnsweredQuestion();
      expect(q.isAnswered, equals(true));
    });
  });

  group('isAnsweredCorrectly', () {
    test(
      'isAnsweredCorrectly should return False if indexes of corret and choosens answer are not the same',
      () {
        final q = createTwoPlusTwoIncorrectlyAnsweredQuestion();
        expect(q.isAnsweredCorrectly, equals(false));
      },
    );

    test(
      'isAnsweredCorrectly should return True if indexes of corret and choosens answer are the same',
      () {
        final q = createTwoPlusTwoCorrectlyAnsweredQuestion();
        expect(q.isAnsweredCorrectly, equals(true));
      },
    );
  });
}
