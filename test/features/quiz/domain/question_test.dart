import 'package:flutter_test/flutter_test.dart';
import 'package:quiz/features/quiz/domain/question.dart';

void main() {
  test('Two questions with same fields should be equal', () {
    const q1 = Question('What is 2+2?', ['1', '2', '3', '4']);
    const q2 = Question('What is 2+2?', ['1', '2', '3', '4']);
    expect(q1, equals(q2));
  });

  test(
    'Two questions with same text but diffrent answers should not be equal',
    () {
    const q1 = Question('What is 2+2?', ['1', '2', '3', '4']);
    const q2 = Question('What is 2+2?', ['4', '3', '2', '1']);
    expect(q1, isNot(equals(q2)));
    },
  );

    test(
    'Two questions with same answers but diffrent texts should not be equal',
    () {
    const q1 = Question('What is 2+2?', ['1', '2', '3', '4']);
    const q2 = Question('What is 2*2?', ['1', '2', '3', '4']);
    expect(q1, isNot(equals(q2)));
    },
  );
}
