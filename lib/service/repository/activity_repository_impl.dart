import '../entities/activity_response.dart';
import '../api/api_service.dart';
import 'activity_repository.dart';

class ActivityRepositoryImpl implements ActivityRepository {
  final ApiService apiService;

  ActivityRepositoryImpl(this.apiService);

  @override
  Future<ActivityResponse> fetchActivity(String lang, int page) {
    return apiService.fetchActivity(lang, page);
  }
}
