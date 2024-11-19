import 'package:json_annotation/json_annotation.dart';

part 'news_response.g.dart';

@JsonSerializable(explicitToJson: true)
class NewsResponse {
  final int total;
  final List<NewsData> data;

  NewsResponse({
    required this.total,
    required this.data,
  });

  factory NewsResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NewsResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NewsData {
  final int id;
  final String title;
  final String description;
  final String? begin;
  final String? end;
  final String posted;
  final String modified;
  final String url;
  final List<dynamic> files;
  final List<Link> links;

  NewsData({
    required this.id,
    required this.title,
    required this.description,
    this.begin,
    this.end,
    required this.posted,
    required this.modified,
    required this.url,
    required this.files,
    required this.links,
  });

  factory NewsData.fromJson(Map<String, dynamic> json) =>
      _$NewsDataFromJson(json);

  Map<String, dynamic> toJson() => _$NewsDataToJson(this);
}

@JsonSerializable()
class Link {
  final String src;
  final String subject;

  Link({
    required this.src,
    required this.subject,
  });

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);

  Map<String, dynamic> toJson() => _$LinkToJson(this);
}
