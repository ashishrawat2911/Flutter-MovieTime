import 'package:json_annotation/json_annotation.dart';

class Genre {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "name")
  String genreName;

  Genre(this.id, this.genreName);

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);

  Map<String, dynamic> toJson() => _$GenreToJson(this);
}
