import 'package:flutter_test/flutter_test.dart';
import 'package:quiz/features/quiz/domain/quiz.dart';

void main() {
  test('Newly created Quiz should be empty', () {
    Quiz quiz = Quiz();
    expect(quiz.isEmpty, true);
  });

  test('Adding first Question to Quiz should make it not empty', () {
    Quiz quiz = Quiz();
    quiz.add("What is 2+2?");
    expect(quiz.isEmpty, false);
  });

  test('Adding two Questions to Quiz should make it length equal to two', () {
    Quiz quiz = Quiz();
    quiz.add("What is 2+2?");
    quiz.add("What is 2*2?");
    expect(quiz.length, 2);
  });

  test('Quizzes with equal Questions should be equal', () {
    Quiz quiz1 = Quiz();
    quiz1.add("What is 2+2?");
    Quiz quiz2 = Quiz();
    quiz2.add("What is 2+2?");
    expect(quiz1, quiz2);
  });

  test('Quizzes with unequal Questions should be unequal', () {
    Quiz quiz1 = Quiz();
    quiz1.add("What is 2+2?");
    Quiz quiz2 = Quiz();
    quiz2.add("What is 8+8?");
    expect(quiz1, isNot(quiz2));
  });

}
