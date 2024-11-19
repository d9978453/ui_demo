import 'package:get/get.dart';
import 'package:dio/dio.dart';
import '/service/api/api_service.dart';
import '/service/repository/news_repository.dart';
import '/service/repository/news_repository_impl.dart';
import '/service/repository/attractions_repository.dart';
import '/service/repository/attractions_repository_impl.dart';
import '/service/repository/activity_repository.dart';
import '/service/repository/activity_repository_impl.dart';
import '/service/repository/calendar_repository.dart';
import '/service/repository/calendar_repository_impl.dart';
import 'usecase/fetch_news_use_case.dart';
import 'usecase/fetch_attractions_use_case.dart';
import 'usecase/fetch_activity_use_case.dart';
import 'usecase/fetch_calendar_use_case.dart';

class DependencyInjection {
  static void init() {
    final dio = Dio();

    Get.lazyPut<ApiService>(() => ApiService(dio));

    Get.lazyPut<NewsRepository>(
          () => NewsRepositoryImpl(Get.find<ApiService>()),
    );
    Get.lazyPut<AttractionsRepository>(
          () => AttractionsRepositoryImpl(Get.find<ApiService>()),
    );
    Get.lazyPut<ActivityRepository>(
          () => ActivityRepositoryImpl(Get.find<ApiService>()),
    );
    Get.lazyPut<CalendarRepository>(
          () => CalendarRepositoryImpl(Get.find<ApiService>()),
    );

    Get.lazyPut<FetchNewsUseCase>(
          () => FetchNewsUseCase(Get.find<NewsRepository>()),
    );
    Get.lazyPut<FetchAttractionsUseCase>(
          () => FetchAttractionsUseCase(Get.find<AttractionsRepository>()),
    );
    Get.lazyPut<FetchActivityUseCase>(
          () => FetchActivityUseCase(Get.find<ActivityRepository>()),
    );
    Get.lazyPut<FetchCalendarUseCase>(
          () => FetchCalendarUseCase(Get.find<CalendarRepository>()),
    );
  }
}
