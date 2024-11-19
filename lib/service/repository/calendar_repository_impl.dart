import '../entities/calendar_response.dart';
import '../api/api_service.dart';
import 'calendar_repository.dart';

class CalendarRepositoryImpl implements CalendarRepository {
  final ApiService apiService;

  CalendarRepositoryImpl(this.apiService);

  @override
  Future<CalendarResponse> fetchCalendar(String lang, int page) {
    return apiService.fetchCalendar(lang, page);
  }
}
