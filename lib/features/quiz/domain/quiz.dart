class Quiz {
  final List<String> _questions = [];

  bool get isEmpty => _questions.isEmpty;

  int get length => _questions.length;

  void add(String question) {
    _questions.add(question);
  }
}
