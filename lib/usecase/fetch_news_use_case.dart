import '../service/repository/news_repository.dart';
import '../mapper/news_vo_mapper.dart';
import '../vo/news_vo.dart';

class FetchNewsUseCase {
  final NewsRepository repository;

  FetchNewsUseCase(this.repository);

  Future<List<NewsVo>> execute(String lang, int page) async {
    try {
      final response = await repository.fetchNews(lang, page);
      print('Response: $response');
      return NewsVoMapper.toVoList(response);
    } catch (e) {
      print('Error fetching news: $e');
      return [];
    }
  }
}
