import '../entities/activity_response.dart';

abstract class ActivityRepository {
  Future<ActivityResponse> fetchActivity(String lang, int page);
}
