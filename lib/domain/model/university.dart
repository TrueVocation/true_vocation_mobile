class University {
  final String name;
  final String description;
  final String address;
  final String code;
  final String logo;
  final bool military;
  final String status;

  University(
      this.name,
      this.description,
      this.address,
      this.code,
      this.logo,
      this.military,
      this.status);

  factory University.fromApi(Map<String, dynamic> json) {
    return University(
        json['name'],
        json['description'],
        json['address'],
        json['code'],
        json['logo'],
        json['military'],
        json['status']);
  }
}
