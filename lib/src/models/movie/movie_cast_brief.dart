import 'package:json_annotation/json_annotation.dart';

part 'movie_cast_brief.g.dart';

@JsonSerializable()
class MovieCastBrief {
  @JsonKey(name: "cast_id")
  int castId;
  @JsonKey(name: "character")
  String character;
  @JsonKey(name: "credit_id")
  String creditId;
  @JsonKey(name: "gender")
  int gender;
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "order")
  int order;
  @JsonKey(name: "profile_path")
  String profilePath;

  MovieCastBrief(this.castId, this.character, this.creditId, this.gender,
      this.id, this.name, this.order, this.profilePath);

  factory MovieCastBrief.fromJson(Map<String, dynamic> json) =>
      _$MovieCastBriefFromJson(json);

  Map<String, dynamic> toJson() => _$MovieCastBriefToJson(this);
}
