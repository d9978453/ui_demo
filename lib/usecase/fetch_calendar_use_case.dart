import '../service/repository/calendar_repository.dart';
import '../mapper/calendar_vo_mapper.dart';
import '../vo/calendar_vo.dart';

class FetchCalendarUseCase {
  final CalendarRepository repository;

  FetchCalendarUseCase(this.repository);

  Future<List<CalendarVo>> execute(String lang, int page) async {
    try {
      final response = await repository.fetchCalendar(lang, page);
      print('Response: $response');
      return CalendarVoMapper.toVoList(response);
    } catch (e) {
      print('Error fetching calendar: $e');
      return [];
    }
  }
}
