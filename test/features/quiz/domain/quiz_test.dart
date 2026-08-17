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
}
