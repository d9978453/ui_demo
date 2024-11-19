import '../service/repository/activity_repository.dart';
import '../mapper/activity_vo_mapper.dart';
import '../vo/activity_vo.dart';

class FetchActivityUseCase {
  final ActivityRepository repository;

  FetchActivityUseCase(this.repository);

  Future<List<ActivityVo>> execute(String lang, int page) async {
    try {
      final response = await repository.fetchActivity(lang, page);
      print('Response: $response');
      return ActivityVoMapper.toVoList(response);
    } catch (e) {
      print('Error fetching activity: $e');
      return [];
    }
  }
}
