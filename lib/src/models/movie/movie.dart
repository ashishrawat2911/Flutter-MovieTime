import 'package:flutter_movietime/src/models/genre/genre.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie.g.dart';

@JsonSerializable()
class Movie {
  @JsonKey(name: "genres")
  List<Genre> genres;
  @JsonKey(name: "adult")
  bool adult;
  @JsonKey(name: "backdrop_path")
  String backdropPath;

  //belongs_to_collection missing
  @JsonKey(name: "budget")
  int budget;
  @JsonKey(name: "homepage")
  String homepage;
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "imdb_id")
  String imdbId;
  @JsonKey(name: "original_language")
  String originalLanguage;
  @JsonKey(name: "original_title")
  String originalTitle;
  @JsonKey(name: "overview")
  String overview;
  @JsonKey(name: "popularity")
  double popularity;
  @JsonKey(name: "poster_path")
  String posterPath;

  //production_companies missing
  //production_countries missing
  @JsonKey(name: "release_date")
  String releaseDate;
  @JsonKey(name: "revenue")
  int revenue;
  @JsonKey(name: "runtime")
  int runtime;

  //spoken_languages missing
  @JsonKey(name: "status")
  String status;
  @JsonKey(name: "tagline")
  String tagline;
  @JsonKey(name: "title")
  String title;
  @JsonKey(name: "video")
  bool video;
  @JsonKey(name: "vote_average")
  double voteAverage;
  @JsonKey(name: "vote_count")
  int voteCount;

  Movie(
      this.genres,
      this.adult,
      this.backdropPath,
      this.budget,
      this.homepage,
      this.id,
      this.imdbId,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.popularity,
      this.posterPath,
      this.releaseDate,
      this.revenue,
      this.runtime,
      this.status,
      this.tagline,
      this.title,
      this.video,
      this.voteAverage,
      this.voteCount);

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  Map<String, dynamic> toJson() => _$MovieToJson(this);
}
