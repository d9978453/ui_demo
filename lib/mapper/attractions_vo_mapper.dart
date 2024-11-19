import '../service/entities/attractions_response.dart';
import '../vo/attractions_vo.dart';

class AttractionsVoMapper {
  static List<AttractionsVo> toVoList(AttractionsResponse response) {
    return response.data.map((attractions) {
      return AttractionsVo(
        title: attractions.name,
        description: attractions.introduction ?? '',
        url: attractions.url ?? '',
        image: attractions.images.isNotEmpty ? attractions.images.first.src : '',
      );
    }).toList();
  }
}
