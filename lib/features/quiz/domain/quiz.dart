class Quiz {
  final List<String> _questions = [];

  bool get isEmpty => _questions.isEmpty;

  void add(String question) {
    _questions.add(question);
  }
}
