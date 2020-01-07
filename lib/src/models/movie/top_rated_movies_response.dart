

 import 'package:json_annotation/json_annotation.dart';

import 'movie_brief.dart';

class TopRatedMoviesResponse {

  @JsonKey(name:"page")
     int page;
  @JsonKey(name:"total_results")
     int totalResults;
  @JsonKey(name:"total_pages")
     int totalPages;
  @JsonKey(name:"results")
    List<MovieBrief> results;

  TopRatedMoviesResponse(
      this.page, this.totalResults, this.totalPages, this.results);

  factory  TopRatedMoviesResponse.fromJson(Map<String, dynamic> json) => _$ TopRatedMoviesResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ TopRatedMoviesResponseToJson(this);
}
