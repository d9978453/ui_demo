import 'package:get/get.dart';
import 'usecase/fetch_news_use_case.dart';
import 'usecase/fetch_attractions_use_case.dart';
import 'usecase/fetch_activity_use_case.dart';
import 'usecase/fetch_calendar_use_case.dart';
import 'vo/news_vo.dart';
import 'vo/attractions_vo.dart';
import 'vo/activity_vo.dart';
import 'vo/calendar_vo.dart';

class MainController extends GetxController {
  final FetchNewsUseCase fetchNewsUseCase;
  final FetchAttractionsUseCase fetchAttractionsUseCase;
  final FetchActivityUseCase fetchActivityUseCase;
  final FetchCalendarUseCase fetchCalendarUseCase;

  MainController(this.fetchNewsUseCase, this.fetchAttractionsUseCase, this.fetchActivityUseCase, this.fetchCalendarUseCase);

  var list_news = <NewsVo>[].obs;
  var list_attractions = <AttractionsVo>[].obs;
  var list_activity = <ActivityVo>[].obs;
  var list_calendar = <CalendarVo>[].obs;

  var isLoadingNews = false.obs;
  var isLoadingAttractions = false.obs;
  var isLoadingActivity = false.obs;
  var isLoadingCalendar = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchAll();
  }

  void fetchAll([String languageCode = 'zh-tw']) async {
    fetchNews(languageCode);
    fetchAttractions(languageCode);
    fetchActivity(languageCode);
    fetchCalendar(languageCode);
  }

  void fetchNews(String languageCode) async {
    try {
      isLoadingNews.value = true;
      final newsList = await fetchNewsUseCase.execute(languageCode, 1);
      list_news.value = newsList;
    } catch (e) {
      print('Error fetching news: $e');
      isLoadingNews.value = false;
    } finally {
      isLoadingNews.value = false;
    }
  }

  void fetchAttractions(String languageCode) async {
    try {
      isLoadingAttractions.value = true;
      final attractions = await fetchAttractionsUseCase.execute(languageCode, 1);
      list_attractions.value = attractions;
    } catch (e) {
      print('Error fetching news: $e');
      isLoadingAttractions.value = false;
    } finally {
      isLoadingAttractions.value = false;
    }
  }

  void fetchActivity(String languageCode) async {
    try {
      isLoadingActivity.value = true;
      final activityList = await fetchActivityUseCase.execute(languageCode, 1);
      list_activity.value = activityList;
    } catch (e) {
      print('Error fetching news: $e');
      isLoadingActivity.value = false;
    } finally {
      isLoadingActivity.value = false;
    }
  }

  void fetchCalendar(String languageCode) async {
    try {
      isLoadingCalendar.value = true;
      final calendarList = await fetchCalendarUseCase.execute(languageCode, 1);
      list_calendar.value = calendarList;
    } catch (e) {
      print('Error fetching news: $e');
      isLoadingCalendar.value = false;
    } finally {
      isLoadingCalendar.value = false;
    }
  }
}
