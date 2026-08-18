import 'package:flutter_test/flutter_test.dart';
import 'package:quiz/features/quiz/domain/answer.dart';

Answer createCorrectAnswer() {
  return const Answer('4', isCorrect: true);
}

Answer createIncorrectAnswer() {
  return const Answer('1', isCorrect: false);
}

void main() {
  group('equality', () {
    test('Answers with identical fields should be equal', () {
      final answer1 = createCorrectAnswer();
      final answer2 = createCorrectAnswer();
      expect(answer1, equals(answer2));
    });

    test('Answers with diffrent fields should be equal', () {
      final answer1 = createCorrectAnswer();
      final answer2 = createIncorrectAnswer();
      expect(answer1, isNot(answer2));
    });
  });
}
