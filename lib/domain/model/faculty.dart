class Faculty {
  final int id;
  final String name;
  final String description;

  Faculty(this.id, this.name, this.description);

  factory Faculty.fromApi(Map<String, dynamic> json) {
    return Faculty(
      json['id'],
      json['name'],
      json['description'],
    );
  }
}