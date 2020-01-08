import 'package:json_annotation/json_annotation.dart';

import 'TV_show_brief.dart';

part 'similar_TV_shows_response.g.dart';

@JsonSerializable()
class SimilarTVShowsResponse {
  @JsonKey(name: "page")
  int page;
  @JsonKey(name: "results")
  List<TVShowBrief> results;
  @JsonKey(name: "total_pages")
  int totalPages;
  @JsonKey(name: "total_results")
  int totalResults;

  SimilarTVShowsResponse(
      this.page, this.results, this.totalPages, this.totalResults);

  factory SimilarTVShowsResponse.fromJson(Map<String, dynamic> json) =>
      _$SimilarTVShowsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SimilarTVShowsResponseToJson(this);
}
