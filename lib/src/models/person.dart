import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()

class Person {
  String dateOfBirth;
  String dateOfDeath;
  int id;
  String name;
  int gender;
  String biography;
  double popularity;
  String placeOfBirth;
  String profilePath;
  bool adult;
  String imdbId;

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
