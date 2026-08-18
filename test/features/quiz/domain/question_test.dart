import 'package:flutter_test/flutter_test.dart';
import 'package:quiz/features/quiz/domain/question.dart';

void main() {
  test('Two questions with same fields should be equal', () {
    const q1 = Question('What is 2+2?', [
      '1',
      '2',
      '3',
      '4',
    ], indexOfCorrectAnswer: 3);
    const q2 = Question('What is 2+2?', [
      '1',
      '2',
      '3',
      '4',
    ], indexOfCorrectAnswer: 3);
    expect(q1, equals(q2));
  });

  group('isAnswered', () {
    test(
      'isAnswered should return False if indexOfChoosenAnswer is not set',
      () {
        const q = Question('What is 2+2?', [
          '1',
          '2',
          '3',
          '4',
        ], indexOfCorrectAnswer: 3);
        expect(q.isAnswered, equals(false));
      },
    );

    test('isAnswered should return True if indexOfChoosenAnswer is set', () {
      const q = Question(
        'What is 2+2?',
        ['1', '2', '3', '4'],
        indexOfCorrectAnswer: 3,
        indexOfChoosenAnswer: 3,
      );
      expect(q.isAnswered, equals(true));
    });
  });

  group('isAnsweredCorrectly', () {
    test(
      'isAnsweredCorrectly should return False if indexes of corret and choosens answer are not the same',
      () {
        const q = Question(
          'What is 2+2?',
          ['1', '2', '3', '4'],
          indexOfCorrectAnswer: 3,
          indexOfChoosenAnswer: 0,
        );
        expect(q.isAnsweredCorrectly, equals(false));
      },
    );

    test(
      'isAnsweredCorrectly should return True if indexes of corret and choosens answer are the same',
      () {
        const q = Question(
          'What is 2+2?',
          ['1', '2', '3', '4'],
          indexOfCorrectAnswer: 3,
          indexOfChoosenAnswer: 3,
        );
        expect(q.isAnsweredCorrectly, equals(true));
      },
    );
  });
}
