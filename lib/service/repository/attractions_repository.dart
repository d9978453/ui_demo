import '../entities/attractions_response.dart';

abstract class AttractionsRepository {
  Future<AttractionsResponse> fetchAttractions(String lang, int page);
}
