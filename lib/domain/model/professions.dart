class Professions {
  final int id;
  final String name;
  final String description;
  final String employability;
  final int averageSalary;

  Professions(this.id, this.name, this.description, this.employability, this.averageSalary);

  factory Professions.fromApi(Map<String, dynamic> json) {
    return Professions(
      json['id'],
      json['name'],
      json['description'],
      json['employability'],
      json['averageSalary'],
    );
  }
}