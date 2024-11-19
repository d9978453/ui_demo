import '../service/entities/news_response.dart';
import '../vo/news_vo.dart';

class NewsVoMapper {
  static List<NewsVo> toVoList(NewsResponse response) {
    return response.data.map((news) {
      return NewsVo(
        title: news.title,
        description: news.description,
        url: news.url,
      );
    }).toList();
  }
}
