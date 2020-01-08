import 'package:json_annotation/json_annotation.dart';

part 'TV_show_cast_brief.g.dart';

@JsonSerializable()
class TVShowCastBrief {
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

  TVShowCastBrief(this.character, this.creditId, this.gender, this.id,
      this.name, this.order, this.profilePath);

  factory TVShowCastBrief.fromJson(Map<String, dynamic> json) =>
      _$TVShowCastBriefFromJson(json);

  Map<String, dynamic> toJson() => _$TVShowCastBriefToJson(this);
}
