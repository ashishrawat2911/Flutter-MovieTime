import 'package:json_annotation/json_annotation.dart';

import 'movie_brief.dart';

class NowShowingMoviesResponse {
  @JsonKey(name: "results")
  List<MovieBrief> results;
  @JsonKey(name: "page")
  int page;
  @JsonKey(name: "total_results")
  int totalResults;

  //dates missing
  @JsonKey(name: "total_pages")
  int totalPages;

  NowShowingMoviesResponse(
      this.results, this.page, this.totalResults, this.totalPages);
  factory NowShowingMoviesResponse.fromJson(Map<String, dynamic> json) => _$NowShowingMoviesResponseFromJson(json);
  Map<String, dynamic> toJson() => _$NowShowingMoviesResponseToJson(this);
}
