class Sentence {
  String sentence;
  String meaning;
  int count;

  Sentence(this.sentence, this.meaning, this.count);

  static List<Sentence> fetchAll() {
    return [
      Sentence("profound", "심오한", 1),
      Sentence("model", "모델", 1)
    ];
  }
}