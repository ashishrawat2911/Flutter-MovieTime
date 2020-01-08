import 'package:flutter_movietime/src/models/tvshows/Genre.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Genre.g.dart';

@JsonSerializable()
class Genre {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "name")
  String genreName;

  Genre(this.id, this.genreName);

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);

  Map<String, dynamic> toJson() => _$GenreToJson(this);
}
