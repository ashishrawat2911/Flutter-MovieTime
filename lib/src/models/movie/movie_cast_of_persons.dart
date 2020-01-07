import 'package:json_annotation/json_annotation.dart';

/**
 * Created by ashish on 20/6/18.
 */

class MovieCastOfPerson {
  @JsonKey(name: "character")
  String character;
  @JsonKey(name: "credit_id")
  String creditId;
  @JsonKey(name: "release_date")
  String releaseDate;
  @JsonKey(name: "vote_count")
  int voteCount;
  @JsonKey(name: "video")
  bool video;
  @JsonKey(name: "adult")
  bool adult;
  @JsonKey(name: "vote_average")
  double voteAverage;
  @JsonKey(name: "title")
  String title;
  @JsonKey(name: "genre_ids")
  List<int> genreIds;
  @JsonKey(name: "original_language")
  String originalLanguage;
  @JsonKey(name: "original_title")
  String originalTitle;
  @JsonKey(name: "popularity")
  double popularity;
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "backdrop_path")
  String backdropPath;
  @JsonKey(name: "overview")
  String overview;
  @JsonKey(name: "poster_path")
  String posterPath;

  MovieCastOfPerson(
      this.character,
      this.creditId,
      this.releaseDate,
      this.voteCount,
      this.video,
      this.adult,
      this.voteAverage,
      this.title,
      this.genreIds,
      this.originalLanguage,
      this.originalTitle,
      this.popularity,
      this.id,
      this.backdropPath,
      this.overview,
      this.posterPath);
  factory MovieCastOfPerson.fromJson(Map<String, dynamic> json) => _$MovieCastOfPersonFromJson(json);
  Map<String, dynamic> toJson() => _$MovieCastOfPersonToJson(this);
}
