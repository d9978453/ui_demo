// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActivityLink _$ActivityLinkFromJson(Map<String, dynamic> json) => ActivityLink(
      src: json['src'] as String? ?? '',
      subject: json['subject'] as String? ?? '',
    );

Map<String, dynamic> _$ActivityLinkToJson(ActivityLink instance) =>
    <String, dynamic>{
      'src': instance.src,
      'subject': instance.subject,
    };

Activity _$ActivityFromJson(Map<String, dynamic> json) => Activity(
      distric: json['distric'] as String? ?? '',
      address: json['address'] as String? ?? '',
      nlat: json['nlat'] as String? ?? '',
      elong: json['elong'] as String? ?? '',
      organizer: json['organizer'] as String? ?? '',
      coOrganizer: json['coOrganizer'] as String? ?? '',
      contact: json['contact'] as String? ?? '',
      tel: json['tel'] as String? ?? '',
      fax: json['fax'] as String? ?? '',
      ticket: json['ticket'] as String? ?? '',
      traffic: json['traffic'] as String? ?? '',
      parking: json['parking'] as String? ?? '',
      id: (json['id'] as num).toInt(),
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      begin: json['begin'] as String? ?? '',
      end: json['end'] as String? ?? '',
      posted: json['posted'] as String? ?? '',
      modified: json['modified'] as String? ?? '',
      url: json['url'] as String? ?? '',
      files:
          (json['files'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      links: (json['links'] as List<dynamic>?)
              ?.map((e) => ActivityLink.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ActivityToJson(Activity instance) => <String, dynamic>{
      'distric': instance.distric,
      'address': instance.address,
      'nlat': instance.nlat,
      'elong': instance.elong,
      'organizer': instance.organizer,
      'coOrganizer': instance.coOrganizer,
      'contact': instance.contact,
      'tel': instance.tel,
      'fax': instance.fax,
      'ticket': instance.ticket,
      'traffic': instance.traffic,
      'parking': instance.parking,
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'begin': instance.begin,
      'end': instance.end,
      'posted': instance.posted,
      'modified': instance.modified,
      'url': instance.url,
      'files': instance.files,
      'links': instance.links?.map((e) => e.toJson()).toList(),
    };

ActivityResponse _$ActivityResponseFromJson(Map<String, dynamic> json) =>
    ActivityResponse(
      total: (json['total'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => Activity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ActivityResponseToJson(ActivityResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'data': instance.data.map((e) => e.toJson()).toList(),
    };
