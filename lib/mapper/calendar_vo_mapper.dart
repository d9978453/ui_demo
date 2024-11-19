import '../service/entities/calendar_response.dart';
import '../vo/calendar_vo.dart';

class CalendarVoMapper {
  static List<CalendarVo> toVoList(CalendarResponse response) {
    return response.data.map((calendar) {
      return CalendarVo(
        title: calendar.title,
        description: calendar.description,
        url: calendar.url,
      );
    }).toList();
  }
}
