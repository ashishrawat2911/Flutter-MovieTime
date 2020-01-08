import 'package:json_annotation/json_annotation.dart';

part 'TV_cast_of_person.g.dart';

@JsonSerializable()
class TVCastOfPerson {
  @JsonKey(name: "credit_id")
  String creditId;
  @JsonKey(name: "original_name")
  String originalName;
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "genre_ids")
  List<int> genreIds;
  @JsonKey(name: "character")
  String character;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "poster_path")
  String posterPath;
  @JsonKey(name: "vote_count")
  int voteCount;
  @JsonKey(name: "vote_average")
  double voteAverage;
  @JsonKey(name: "popularity")
  double popularity;
  @JsonKey(name: "episode_count")
  int episodeCount;
  @JsonKey(name: "original_language")
  String originalLanguage;
  @JsonKey(name: "first_air_date")
  String firstAirDate;
  @JsonKey(name: "backdrop_path")
  String backdropPath;
  @JsonKey(name: "overview")
  String overview;
  @JsonKey(name: "origin_country")
  List<String> originCountries;

  TVCastOfPerson(
      this.creditId,
      this.originalName,
      this.id,
      this.genreIds,
      this.character,
      this.name,
      this.posterPath,
      this.voteCount,
      this.voteAverage,
      this.popularity,
      this.episodeCount,
      this.originalLanguage,
      this.firstAirDate,
      this.backdropPath,
      this.overview,
      this.originCountries);

  factory TVCastOfPerson.fromJson(Map<String, dynamic> json) =>
      _$TVCastOfPersonFromJson(json);

  Map<String, dynamic> toJson() => _$TVCastOfPersonToJson(this);
}
