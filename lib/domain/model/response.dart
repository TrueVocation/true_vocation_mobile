class Response {
  final String title;
  final int code;

  Response(this.title, this.code);

  factory Response.fromApi(Map<String, dynamic> json) {
    return Response(
      json['title'],
      json['status'],
    );
  }
}