import 'package:json_annotation/json_annotation.dart';

part 'TV_show_crew_brief.g.dart';

@JsonSerializable()
class TVShowCrewBrief {
  @JsonKey(name: "credit_id")
  String creditId;
  @JsonKey(name: "department")
  String department;
  @JsonKey(name: "gender")
  int gender;
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "job")
  String job;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "profile_path")
  String profilePath;

  TVShowCrewBrief(this.creditId, this.department, this.gender, this.id,
      this.job, this.name, this.profilePath);

  factory TVShowCrewBrief.fromJson(Map<String, dynamic> json) =>
      _$TVShowCrewBriefFromJson(json);

  Map<String, dynamic> toJson() => _$TVShowCrewBriefToJson(this);
}
