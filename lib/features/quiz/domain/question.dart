import 'package:flutter/foundation.dart';

class Question {
  Question(this.text, this.answers);
  final String text;
  final List<String> answers;

  @override
  bool operator ==(Object other) {
    return other is Question &&
        other.text == text &&
        listEquals(other.answers, answers);
  }
  
  @override
  int get hashCode => Object.hash(text, Object.hashAll(answers));
}
