class Questions {
  final int id;
  final String question;

  Questions(this.id, this.question);

  factory Questions.fromApi(Map<String, dynamic> json) {
    return Questions(
      json['id'],
      json['question'],
    );
  }
}

class Answer {
  final int id;
  final String answer;

  Answer(this.id, this.answer);

  factory Answer.fromApi(Map<String, dynamic> json) {
    return Answer(
      json['id'],
      json['answer'],
    );
  }
}