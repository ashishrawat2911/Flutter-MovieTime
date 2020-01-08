import 'package:flutter_movietime/src/models/tvshows/Genre.dart';
import 'package:json_annotation/json_annotation.dart';

import 'network.dart';

part 'TV_show.g.dart';

@JsonSerializable()
class TVShow {
  @JsonKey(name: "backdrop_path")
  String backdropPath;

  //created_by missing
  @JsonKey(name: "episode_run_time")
  List<int> episodeRunTime;
  @JsonKey(name: "first_air_date")
  String firstAirDate;
  @JsonKey(name: "genres")
  List<Genre> genres;
  @JsonKey(name: "homepage")
  String homepage;
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "in_production")
  bool inProduction;
  @JsonKey(name: "languages")
  List<String> languages;
  @JsonKey(name: "last_air_date")
  String lastAirDate;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "networks")
  List<Network> networks;
  @JsonKey(name: "number_of_episodes")
  int numberOfEpisodes;
  @JsonKey(name: "number_of_seasons")
  int numberOfSeasons;
  @JsonKey(name: "origin_country")
  List<String> originCountries;
  @JsonKey(name: "original_language")
  String originalLanguage;
  @JsonKey(name: "original_name")
  String originalName;
  @JsonKey(name: "overview")
  String overview;
  @JsonKey(name: "popularity")
  double popularity;
  @JsonKey(name: "poster_path")
  String posterPath;

  //production_companies missing
  //seasons missing
  @JsonKey(name: "status")
  String status;
  @JsonKey(name: "type")
  String type;
  @JsonKey(name: "vote_average")
  double voteAverage;
  @JsonKey(name: "vote_count")
  int voteCount;

  TVShow(
      this.backdropPath,
      this.episodeRunTime,
      this.firstAirDate,
      this.genres,
      this.homepage,
      this.id,
      this.inProduction,
      this.languages,
      this.lastAirDate,
      this.name,
      this.networks,
      this.numberOfEpisodes,
      this.numberOfSeasons,
      this.originCountries,
      this.originalLanguage,
      this.originalName,
      this.overview,
      this.popularity,
      this.posterPath,
      this.status,
      this.type,
      this.voteAverage,
      this.voteCount);

  factory TVShow.fromJson(Map<String, dynamic> json) => _$TVShowFromJson(json);

  Map<String, dynamic> toJson() => _$TVShowToJson(this);
}
