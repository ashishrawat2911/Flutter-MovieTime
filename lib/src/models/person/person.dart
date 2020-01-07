import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Person {
  @JsonKey(name: "birthday")
  String dateOfBirth;
  @JsonKey(name: "deathday")
  String dateOfDeath;
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "name")
  String name;

  //also_known_as missing
  @JsonKey(name: "gender")
  int gender;
  @JsonKey(name: "biography")
  String biography;
  @JsonKey(name: "popularity")
  double popularity;
  @JsonKey(name: "place_of_birth")
  String placeOfBirth;
  @JsonKey(name: "profile_path")
  String profilePath;
  @JsonKey(name: "adult")
  bool adult;
  @JsonKey(name: "imdb_id")
  String imdbId;

  //homepage missing

  Person(
      this.dateOfBirth,
      this.dateOfDeath,
      this.id,
      this.name,
      this.gender,
      this.biography,
      this.popularity,
      this.placeOfBirth,
      this.profilePath,
      this.adult,
      this.imdbId);

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
  Map<String, dynamic> toJson() => _$PersonToJson(this);

}
