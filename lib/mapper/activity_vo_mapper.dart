import '../service/entities/activity_response.dart';
import '../vo/activity_vo.dart';

class ActivityVoMapper {
  static List<ActivityVo> toVoList(ActivityResponse response) {
    return response.data.map((activity) {
      return ActivityVo(
        title: activity.title ?? '',
        description: activity.description ?? '',
        url: activity.url ?? '',
      );
    }).toList();
  }
}
