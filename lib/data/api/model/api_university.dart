
class ApiUniversity {
  final String name;

  ApiUniversity.fromApi(Map<String, dynamic> map)
      : name = map['result']['name'];
}
