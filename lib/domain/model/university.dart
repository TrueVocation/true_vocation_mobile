class University {
  final int id;
  final String name;
  final String description;
  final String address;
  final String code;
  final String logo;
  final bool military;
  final bool dormitory;
  final String status;
  final int specialityCount;

  University(
      this.id,
      this.name,
      this.description,
      this.address,
      this.code,
      this.logo,
      this.dormitory,
      this.military,
      this.status,
      this.specialityCount);

  factory University.fromApi(Map<String, dynamic> json) {
    return University(
        json['id'],
        json['name'],
        json['description'],
        json['address'],
        json['code'],
        json['logo'],
        json['dormitory'],
        json['military'],
        json['status'],
        json['specialityCount'],
    );
  }
}
