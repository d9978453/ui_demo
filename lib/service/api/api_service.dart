import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../entities/attractions_response.dart';
import '../entities/news_response.dart';
import '../entities/activity_response.dart';
import '../entities/calendar_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://www.travel.taipei/open-api")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl = "https://www.travel.taipei/open-api"}) {
    dio.options.headers = {
      'Accept': 'application/json',  // 設置全局標頭
      // 其他需要的全局標頭
    };
    return _ApiService(dio, baseUrl: baseUrl);
  }

  /// 遊憩景點
  @GET('/{lang}/Attractions/All')
  Future<AttractionsResponse> fetchAttractions(
      @Path("lang") String lang,
      @Query("page") int page,
      );

  /// 最新消息（文字）
  @GET('/{lang}/Events/News')
  Future<NewsResponse> fetchNews(
      @Path("lang") String lang,
      @Query("page") int page,
      );

  /// 活動展演
  @GET('/{lang}/Events/Activity')
  Future<ActivityResponse> fetchActivity(
      @Path("lang") String lang,
      @Query("page") int page,
      );

  /// 活動年曆
  @GET('/{lang}/Events/Calendar')
  Future<CalendarResponse> fetchCalendar(
      @Path("lang") String lang,
      @Query("page") int page,
      );
}
