import '../service/repository/attractions_repository.dart';
import '../mapper/attractions_vo_mapper.dart';
import '../vo/attractions_vo.dart';

class FetchAttractionsUseCase {
  final AttractionsRepository repository;

  FetchAttractionsUseCase(this.repository);

  Future<List<AttractionsVo>> execute(String lang, int page) async {
    try {
      final response = await repository.fetchAttractions(lang, page);
      print('Response: $response');
      return AttractionsVoMapper.toVoList(response);
    } catch (e) {
      print('Error fetching attractions: $e');
      return [];
    }
  }
}
