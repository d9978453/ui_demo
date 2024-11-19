// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Calendar _$CalendarFromJson(Map<String, dynamic> json) => Calendar(
      distric: json['distric'] as String,
      address: json['address'] as String,
      nlat: json['nlat'] as String,
      elong: json['elong'] as String,
      tel: json['tel'] as String,
      fax: json['fax'] as String,
      ticket: json['ticket'] as String,
      traffic: json['traffic'] as String,
      parking: json['parking'] as String,
      isMajor: json['isMajor'] as bool? ?? false,
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      begin: json['begin'] as String,
      end: json['end'] as String,
      posted: json['posted'] as String,
      modified: json['modified'] as String,
      url: json['url'] as String,
      files: (json['files'] as List<dynamic>).map((e) => e as String).toList(),
      links: json['links'] as List<dynamic>,
    );

Map<String, dynamic> _$CalendarToJson(Calendar instance) => <String, dynamic>{
      'distric': instance.distric,
      'address': instance.address,
      'nlat': instance.nlat,
      'elong': instance.elong,
      'tel': instance.tel,
      'fax': instance.fax,
      'ticket': instance.ticket,
      'traffic': instance.traffic,
      'parking': instance.parking,
      'isMajor': instance.isMajor,
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'begin': instance.begin,
      'end': instance.end,
      'posted': instance.posted,
      'modified': instance.modified,
      'url': instance.url,
      'files': instance.files,
      'links': instance.links,
    };

CalendarResponse _$CalendarResponseFromJson(Map<String, dynamic> json) =>
    CalendarResponse(
      total: (json['total'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => Calendar.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CalendarResponseToJson(CalendarResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'data': instance.data,
    };
