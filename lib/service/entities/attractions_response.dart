import 'package:json_annotation/json_annotation.dart';

part 'attractions_response.g.dart';

@JsonSerializable(explicitToJson: true)
class AttractionsResponse {
  final int total;
  final List<Attraction> data;

  AttractionsResponse({
    required this.total,
    required this.data,
  });

  factory AttractionsResponse.fromJson(Map<String, dynamic> json) =>
      _$AttractionsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AttractionsResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Attraction {
  final int id;
  final String name;
  @JsonKey(name: 'name_zh')
  final String? nameZh;
  @JsonKey(name: 'open_status')
  final int openStatus;
  final String? introduction;
  @JsonKey(name: 'open_time')
  final String? openTime;
  final String? zipcode;
  final String? distric;
  final String? address;
  final String? tel;
  final String? fax;
  final String? email;
  final String? months;
  final double nlat;
  final double elong;
  @JsonKey(name: 'official_site')
  final String? officialSite;
  final String? facebook;
  final String? ticket;
  final String? remind;
  final String? staytime;
  final String? modified;
  final String? url;
  final List<Category> category;
  final List<Target> target;
  final List<Service> service;
  final List<dynamic> friendly;
  final List<ImageData> images;
  final List<dynamic> files;
  final List<dynamic> links;

  Attraction({
    required this.id,
    required this.name,
    this.nameZh,
    required this.openStatus,
    this.introduction,
    this.openTime,
    this.zipcode,
    this.distric,
    this.address,
    this.tel,
    this.fax,
    this.email,
    this.months,
    required this.nlat,
    required this.elong,
    this.officialSite,
    this.facebook,
    this.ticket,
    this.remind,
    this.staytime,
    this.modified,
    this.url,
    required this.category,
    required this.target,
    required this.service,
    required this.friendly,
    required this.images,
    required this.files,
    required this.links,
  });

  factory Attraction.fromJson(Map<String, dynamic> json) =>
      _$AttractionFromJson(json);

  Map<String, dynamic> toJson() => _$AttractionToJson(this);
}

@JsonSerializable()
class Category {
  final int id;
  final String name;

  Category({
    required this.id,
    required this.name,
  });

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}

@JsonSerializable()
class Target {
  final int id;
  final String name;

  Target({
    required this.id,
    required this.name,
  });

  factory Target.fromJson(Map<String, dynamic> json) => _$TargetFromJson(json);

  Map<String, dynamic> toJson() => _$TargetToJson(this);
}

@JsonSerializable()
class Service {
  final int id;
  final String name;

  Service({
    required this.id,
    required this.name,
  });

  factory Service.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceToJson(this);
}

@JsonSerializable()
class ImageData {
  final String src;
  final String? subject;
  final String ext;

  ImageData({
    required this.src,
    this.subject,
    required this.ext,
  });

  factory ImageData.fromJson(Map<String, dynamic> json) =>
      _$ImageDataFromJson(json);

  Map<String, dynamic> toJson() => _$ImageDataToJson(this);
}
