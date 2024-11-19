import '../entities/calendar_response.dart';

abstract class CalendarRepository {
  Future<CalendarResponse> fetchCalendar(String lang, int page);
}
