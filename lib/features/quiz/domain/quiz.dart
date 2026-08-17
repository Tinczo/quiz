import 'package:flutter/foundation.dart';

class Quiz {
  final List<String> _questions = [];

  bool get isEmpty => _questions.isEmpty;

  int get length => _questions.length;

  void add(String question) {
    _questions.add(question);
  }

  @override
  bool operator ==(Object other) {
    return other is Quiz && listEquals(_questions, other._questions);
  }

  @override
  int get hashCode => Object.hashAll(_questions);
}
