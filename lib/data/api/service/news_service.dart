import 'package:true_vocation_mobile/data/api/repository/news_repository.dart';
import 'package:true_vocation_mobile/domain/model/news.dart';

class NewsService {
  Future<List<News>> getAllNews(int page, size) async {
    return NewsRepository().getAllNews(page, size);
  }

  Future<List<News>> getTodayNews(int page, size) async {
    return NewsRepository().getTodayNews(page, size);
  }
}
