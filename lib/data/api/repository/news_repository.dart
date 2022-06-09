import 'package:true_vocation_mobile/domain/model/news.dart';
import 'package:true_vocation_mobile/utils/constants.dart';

class NewsRepository {
  Future<List<News>> getAllNews(page, size) async {
    final response = await AppConstants.dio
        .get('/api/posts-list?page=$page&size=$size&sort=id&order=desc');

    return (response.data as List).map((e) => News.fromJson(e)).toList();
  }

  Future<List<News>> getTodayNews(size, page) async {
    final response = await AppConstants.dio
        .get('/api/posts-today?page=$page&size=$size&sort=id&order=desc');

    return (response.data as List).map((e) => News.fromJson(e)).toList();
  }
}
