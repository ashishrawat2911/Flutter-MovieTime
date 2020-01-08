import 'package:json_annotation/json_annotation.dart';

part 'movie_brief.g.dart';

@JsonSerializable()
class MovieBrief {
  @JsonKey(name: "vote_count")
  int voteCount;
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "video")
  bool video;
  @JsonKey(name: "vote_average")
  double voteAverage;
  @JsonKey(name: "title")
  String title;
  @JsonKey(name: "popularity")
  double popularity;
  @JsonKey(name: "poster_path")
  String posterPath;
  @JsonKey(name: "original_language")
  String originalLanguage;
  @JsonKey(name: "original_title")
  String originalTitle;
  @JsonKey(name: "genre_ids")
  List<int> genreIds;
  @JsonKey(name: "backdrop_path")
  String backdropPath;
  @JsonKey(name: "adult")
  bool adult;
  @JsonKey(name: "overview")
  String overview;
  @JsonKey(name: "release_date")
  String releaseDate;

  MovieBrief(
      this.voteCount,
      this.id,
      this.video,
      this.voteAverage,
      this.title,
      this.popularity,
      this.posterPath,
      this.originalLanguage,
      this.originalTitle,
      this.genreIds,
      this.backdropPath,
      this.adult,
      this.overview,
      this.releaseDate);

  factory MovieBrief.fromJson(Map<String, dynamic> json) =>
      _$MovieBriefFromJson(json);

  Map<String, dynamic> toJson() => _$MovieBriefToJson(this);
}
