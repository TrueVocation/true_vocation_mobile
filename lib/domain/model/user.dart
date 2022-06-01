class User {
  int? id;
  String? login;
  String? phoneNumber;
  String? birthdate;
  String? firstName;
  String? lastName;
  String? password;
  String? email;
  String? imageUrl;
  bool? activated;

  User(this.id, this.login, this.phoneNumber, this.birthdate, this.firstName,
      this.lastName, this.password, this.email, this.imageUrl, this.activated);

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    login = json['login'];
    phoneNumber = json['phoneNumber'];
    birthdate = json['birthdate'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    imageUrl = json['imageUrl'];
    activated = json['activated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['login'] = login;
    data['phoneNumber'] = phoneNumber;
    data['birthdate'] = birthdate;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['password'] = password;
    data['email'] = email;
    data['imageUrl'] = imageUrl;
    data['activated'] = activated;
    return data;
  }
}
