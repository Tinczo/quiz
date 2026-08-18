import 'package:flutter/foundation.dart';
import 'package:quiz/features/quiz/domain/question.dart';

class Quiz {
  const Quiz(List<Question> questions) : _questions = questions;

  final List<Question> _questions;

  Quiz add(Question question) {
    return Quiz([..._questions, question]);
  }

  Question get currentQuestion => _questions.first;
  int get length => _questions.length;
  bool get isEmpty => _questions.isEmpty;

  @override
  bool operator ==(Object other) {
    return other is Quiz && listEquals(_questions, other._questions);
  }

  @override
  int get hashCode => Object.hashAll(_questions);

  @override
  String toString() {
    String result = 'Quiz([';
    for (final question in _questions) {
      result += 'Question("${question.text}", [';
      for (final answer in question.answers) {
        result += '"$answer", ';
      }
      result = result.trimRight();
      result += ']), ';
    }
    result = result.trimRight();
    result += "])";
    return result;
  }
}
