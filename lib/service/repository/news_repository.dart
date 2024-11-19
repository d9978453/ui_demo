import '../entities/news_response.dart';

abstract class NewsRepository {
  Future<NewsResponse> fetchNews(String lang, int page);
}
