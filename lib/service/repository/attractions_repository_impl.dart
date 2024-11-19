import '../entities/attractions_response.dart';
import '../api/api_service.dart';
import 'attractions_repository.dart';

class AttractionsRepositoryImpl implements AttractionsRepository {
  final ApiService apiService;

  AttractionsRepositoryImpl(this.apiService);

  @override
  Future<AttractionsResponse> fetchAttractions(String lang, int page) {
    return apiService.fetchAttractions(lang, page);
  }
}
