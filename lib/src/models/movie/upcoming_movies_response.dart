import 'package:flutter_movietime/src/models/movie/movie_brief.dart';
import 'package:json_annotation/json_annotation.dart';

part 'upcoming_movies_response.g.dart';

@JsonSerializable()
class UpcomingMoviesResponse {
  @JsonKey(name: "results")
  List<MovieBrief> results;
  @JsonKey(name: "page")
  int page;
  @JsonKey(name: "total_results")
  int totalResults;

  //dates missing
  @JsonKey(name: "total_pages")
  int totalPages;

  UpcomingMoviesResponse(this.results, this.page, this.totalResults, this.totalPages);

  factory UpcomingMoviesResponse.fromJson(Map<String, dynamic> json) =>
      _$UpcomingMoviesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UpcomingMoviesResponseToJson(this);
}
