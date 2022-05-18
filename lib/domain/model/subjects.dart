class Subject {
  final String id;
  final String name;

  Subject(this.id, this.name);

  factory Subject.fromApi(Map<String, dynamic> json) {
    return Subject(
      json['id'],
      json['name'],
    );
  }
}