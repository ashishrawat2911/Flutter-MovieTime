

 import 'package:json_annotation/json_annotation.dart';

class MovieCrewBrief {

  @JsonKey(name:"credit_id")
   String creditId;
  @JsonKey(name:"department")
   String department;
  @JsonKey(name:"gender")
    int  gender;
  @JsonKey(name:"id")
    int  id;
  @JsonKey(name:"job")
   String job;
  @JsonKey(name:"name")
   String name;
  @JsonKey(name:"profile_path")
   String profilePath;

  MovieCrewBrief(this.creditId, this.department, this.gender, this.id, this.job,
      this.name, this.profilePath);

  factory MovieCrewBrief.fromJson(Map<String, dynamic> json) => _$MovieCrewBriefFromJson(json);
  Map<String, dynamic> toJson() => _$MovieCrewBriefToJson(this);
}
