import '../entities/news_response.dart';
import '../api/api_service.dart';
import 'news_repository.dart';

class NewsRepositoryImpl implements NewsRepository {
  final ApiService apiService;

  NewsRepositoryImpl(this.apiService);

  @override
  Future<NewsResponse> fetchNews(String lang, int page) {
    return apiService.fetchNews(lang, page);
  }
}
