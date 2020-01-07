import 'package:flutter_movietime/src/models/genre/genre.dart';
import 'package:json_annotation/json_annotation.dart';

class GenresList {
  @JsonKey(name: "genres")
  List<Genre> genres;


  GenresList(this.genres);

  factory GenresList.fromJson(Map<String, dynamic> json) => _$GenresListFromJson(json);
  Map<String, dynamic> toJson() => _$GenresListToJson(this);
}
