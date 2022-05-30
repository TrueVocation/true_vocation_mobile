class User {
  final int id;
  final String login;
  final String phoneNumber;
  final DateTime birthdate;
  final String firstName;
  final String lastName;
  final String email;
  final String imageUrl;
  final String activated;

  User(this.id, this.phoneNumber, this.birthdate, this.firstName, this.lastName,
      this.email, this.imageUrl, this.activated, this.login);
}
