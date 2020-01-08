import 'package:json_annotation/json_annotation.dart';

part 'TV_show_brief.g.dart';

@JsonSerializable()
class TVShowBrief {
  @JsonKey(name: "original_name")
  String originalName;
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "vote_count")
  int voteCount;
  @JsonKey(name: "vote_average")
  double voteAverage;
  @JsonKey(name: "poster_path")
  String posterPath;
  @JsonKey(name: "first_air_date")
  String firstAirDate;
  @JsonKey(name: "popularity")
  double popularity;
  @JsonKey(name: "genre_ids")
  List<int> genreIds;
  @JsonKey(name: "original_language")
  String originalLanguage;
  @JsonKey(name: "backdrop_path")
  String backdropPath;
  @JsonKey(name: "overview")
  String overview;
  @JsonKey(name: "origin_country")
  List<String> originCountries;

  TVShowBrief(
      this.originalName,
      this.id,
      this.name,
      this.voteCount,
      this.voteAverage,
      this.posterPath,
      this.firstAirDate,
      this.popularity,
      this.genreIds,
      this.originalLanguage,
      this.backdropPath,
      this.overview,
      this.originCountries);

  factory TVShowBrief.fromJson(Map<String, dynamic> json) =>
      _$TVShowBriefFromJson(json);

  Map<String, dynamic> toJson() => _$TVShowBriefToJson(this);
}
