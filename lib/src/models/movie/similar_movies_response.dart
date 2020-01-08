import 'package:json_annotation/json_annotation.dart';

import 'movie_brief.dart';

/**
 * Created by ashish on 20/6/18.
 */

part 'similar_movies_response.g.dart';

@JsonSerializable()
class SimilarMoviesResponse {
  @JsonKey(name: "page")
  int page;
  @JsonKey(name: "results")
  List<MovieBrief> results;
  @JsonKey(name: "total_pages")
  int totalPages;
  @JsonKey(name: "total_results")
  int totalResults;

  SimilarMoviesResponse(this.page, this.results, this.totalPages, this.totalResults);

  factory SimilarMoviesResponse.fromJson(Map<String, dynamic> json) => _$SimilarMoviesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SimilarMoviesResponseToJson(this);
}
