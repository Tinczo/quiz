import 'package:flutter/foundation.dart';
import 'package:quiz/features/quiz/domain/question.dart';

class Quiz {
  final List<Question> _questions = [];

  void add(Question question) {
    _questions.add(question);
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
}
