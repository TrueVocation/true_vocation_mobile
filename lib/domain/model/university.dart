
class University {
  final String name;
  final String description;
  final String address;
  final String code;
  final String logo;
  final String averagePrice;
  final bool hostel;
  final bool militaryDepartment;
  final String status;
  final List<Speciality> specialities;
  final List<Picture> images;

  University(this.name, this.description, this.address, this.code, this.logo, this.averagePrice, this.hostel, this.militaryDepartment, this.status, this.specialities, this.images);
}

class Picture {
  final String url;

  Picture(this.url);
}

class Speciality {
  final String name;

  Speciality(this.name);
}
