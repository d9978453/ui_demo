import 'package:json_annotation/json_annotation.dart';

part 'calendar_response.g.dart';

@JsonSerializable()
class Calendar {
  final String distric;
  final String address;
  final String nlat;
  final String elong;
  final String tel;
  final String fax;
  final String ticket;
  final String traffic;
  final String parking;
  final bool? isMajor;
  final int id;
  final String title;
  final String description;
  final String begin;
  final String end;
  final String posted;
  final String modified;
  final String url;
  final List<String> files;
  final List<dynamic> links;

  Calendar({
    required this.distric,
    required this.address,
    required this.nlat,
    required this.elong,
    required this.tel,
    required this.fax,
    required this.ticket,
    required this.traffic,
    required this.parking,
    this.isMajor = false,
    required this.id,
    required this.title,
    required this.description,
    required this.begin,
    required this.end,
    required this.posted,
    required this.modified,
    required this.url,
    required this.files,
    required this.links,
  });

  factory Calendar.fromJson(Map<String, dynamic> json) =>
      _$CalendarFromJson(json);

  Map<String, dynamic> toJson() => _$CalendarToJson(this);
}

@JsonSerializable()
class CalendarResponse {
  final int total;
  final List<Calendar> data;

  CalendarResponse({
    required this.total,
    required this.data,
  });

  factory CalendarResponse.fromJson(Map<String, dynamic> json) =>
      _$CalendarResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CalendarResponseToJson(this);
}
