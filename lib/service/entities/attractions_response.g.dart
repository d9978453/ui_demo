// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attractions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttractionsResponse _$AttractionsResponseFromJson(Map<String, dynamic> json) =>
    AttractionsResponse(
      total: (json['total'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => Attraction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AttractionsResponseToJson(
        AttractionsResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

Attraction _$AttractionFromJson(Map<String, dynamic> json) => Attraction(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      nameZh: json['name_zh'] as String?,
      openStatus: (json['open_status'] as num).toInt(),
      introduction: json['introduction'] as String?,
      openTime: json['open_time'] as String?,
      zipcode: json['zipcode'] as String?,
      distric: json['distric'] as String?,
      address: json['address'] as String?,
      tel: json['tel'] as String?,
      fax: json['fax'] as String?,
      email: json['email'] as String?,
      months: json['months'] as String?,
      nlat: (json['nlat'] as num).toDouble(),
      elong: (json['elong'] as num).toDouble(),
      officialSite: json['official_site'] as String?,
      facebook: json['facebook'] as String?,
      ticket: json['ticket'] as String?,
      remind: json['remind'] as String?,
      staytime: json['staytime'] as String?,
      modified: json['modified'] as String?,
      url: json['url'] as String?,
      category: (json['category'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      target: (json['target'] as List<dynamic>)
          .map((e) => Target.fromJson(e as Map<String, dynamic>))
          .toList(),
      service: (json['service'] as List<dynamic>)
          .map((e) => Service.fromJson(e as Map<String, dynamic>))
          .toList(),
      friendly: json['friendly'] as List<dynamic>,
      images: (json['images'] as List<dynamic>)
          .map((e) => ImageData.fromJson(e as Map<String, dynamic>))
          .toList(),
      files: json['files'] as List<dynamic>,
      links: json['links'] as List<dynamic>,
    );

Map<String, dynamic> _$AttractionToJson(Attraction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_zh': instance.nameZh,
      'open_status': instance.openStatus,
      'introduction': instance.introduction,
      'open_time': instance.openTime,
      'zipcode': instance.zipcode,
      'distric': instance.distric,
      'address': instance.address,
      'tel': instance.tel,
      'fax': instance.fax,
      'email': instance.email,
      'months': instance.months,
      'nlat': instance.nlat,
      'elong': instance.elong,
      'official_site': instance.officialSite,
      'facebook': instance.facebook,
      'ticket': instance.ticket,
      'remind': instance.remind,
      'staytime': instance.staytime,
      'modified': instance.modified,
      'url': instance.url,
      'category': instance.category.map((e) => e.toJson()).toList(),
      'target': instance.target.map((e) => e.toJson()).toList(),
      'service': instance.service.map((e) => e.toJson()).toList(),
      'friendly': instance.friendly,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'files': instance.files,
      'links': instance.links,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Target _$TargetFromJson(Map<String, dynamic> json) => Target(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$TargetToJson(Target instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Service _$ServiceFromJson(Map<String, dynamic> json) => Service(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$ServiceToJson(Service instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

ImageData _$ImageDataFromJson(Map<String, dynamic> json) => ImageData(
      src: json['src'] as String,
      subject: json['subject'] as String?,
      ext: json['ext'] as String,
    );

Map<String, dynamic> _$ImageDataToJson(ImageData instance) => <String, dynamic>{
      'src': instance.src,
      'subject': instance.subject,
      'ext': instance.ext,
    };
