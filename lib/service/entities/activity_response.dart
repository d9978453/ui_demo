import 'package:json_annotation/json_annotation.dart';

part 'activity_response.g.dart';

@JsonSerializable()
class ActivityLink {
  final String? src;
  final String? subject;

  ActivityLink({
    this.src = '',
    this.subject = '',
  });

  factory ActivityLink.fromJson(Map<String, dynamic> json) =>
      _$ActivityLinkFromJson(json);

  Map<String, dynamic> toJson() => _$ActivityLinkToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Activity {
  final String? distric;
  final String? address;
  final String? nlat;
  final String? elong;
  final String? organizer;
  final String? coOrganizer;
  final String? contact;
  final String? tel;
  final String? fax;
  final String? ticket;
  final String? traffic;
  final String? parking;
  final int id;
  final String? title;
  final String? description;
  final String? begin;
  final String? end;
  final String? posted;
  final String? modified;
  final String? url;
  final List<String>? files;
  final List<ActivityLink>? links;

  Activity({
    this.distric = '',
    this.address = '',
    this.nlat = '',
    this.elong = '',
    this.organizer = '',
    this.coOrganizer = '',
    this.contact = '',
    this.tel = '',
    this.fax = '',
    this.ticket = '',
    this.traffic = '',
    this.parking = '',
    required this.id,
    this.title = '',
    this.description = '',
    this.begin = '',
    this.end = '',
    this.posted = '',
    this.modified = '',
    this.url = '',
    this.files = const [],
    this.links = const [],
  });

  factory Activity.fromJson(Map<String, dynamic> json) =>
      _$ActivityFromJson(json);

  Map<String, dynamic> toJson() => _$ActivityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ActivityResponse {
  final int total;
  final List<Activity> data;

  ActivityResponse({
    required this.total,
    required this.data,
  });

  factory ActivityResponse.fromJson(Map<String, dynamic> json) =>
      _$ActivityResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ActivityResponseToJson(this);
}
