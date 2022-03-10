
class GetUniversityBody {
  final String name;

  GetUniversityBody({
    required this.name
  });

  Map<String, dynamic> toApi(){
    return {
      'name': name,
      'formatted': 0
    };
  }
}