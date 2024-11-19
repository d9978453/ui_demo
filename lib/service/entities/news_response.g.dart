// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsResponse _$NewsResponseFromJson(Map<String, dynamic> json) => NewsResponse(
      total: (json['total'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => NewsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NewsResponseToJson(NewsResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

NewsData _$NewsDataFromJson(Map<String, dynamic> json) => NewsData(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      begin: json['begin'] as String?,
      end: json['end'] as String?,
      posted: json['posted'] as String,
      modified: json['modified'] as String,
      url: json['url'] as String,
      files: json['files'] as List<dynamic>,
      links: (json['links'] as List<dynamic>)
          .map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NewsDataToJson(NewsData instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'begin': instance.begin,
      'end': instance.end,
      'posted': instance.posted,
      'modified': instance.modified,
      'url': instance.url,
      'files': instance.files,
      'links': instance.links.map((e) => e.toJson()).toList(),
    };

Link _$LinkFromJson(Map<String, dynamic> json) => Link(
      src: json['src'] as String,
      subject: json['subject'] as String,
    );

Map<String, dynamic> _$LinkToJson(Link instance) => <String, dynamic>{
      'src': instance.src,
      'subject': instance.subject,
    };
