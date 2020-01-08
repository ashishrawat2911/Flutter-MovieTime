import 'package:flutter_movietime/src/models/movie/movie_brief.dart';
import 'package:json_annotation/json_annotation.dart';

part 'popular_movies_response.g.dart';

@JsonSerializable()
class PopularMoviesResponse {
  @JsonKey(name: "page")
  int page;
  @JsonKey(name: "total_results")
  int totalResults;
  @JsonKey(name: "total_pages")
  int totalPages;
  @JsonKey(name: "results")
  List<MovieBrief> results;

  PopularMoviesResponse(
      this.page, this.totalResults, this.totalPages, this.results);

  factory PopularMoviesResponse.fromJson(Map<String, dynamic> json) =>
      _$PopularMoviesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PopularMoviesResponseToJson(this);
}
