import 'package:json_annotation/json_annotation.dart';

import 'TV_show_brief.dart';

part 'top_rated_TV_shows_response.g.dart';

@JsonSerializable()
class TopRatedTVShowsResponse {
  @JsonKey(name: "page")
  int page;
  @JsonKey(name: "results")
  List<TVShowBrief> results;
  @JsonKey(name: "total_results")
  int totalResults;
  @JsonKey(name: "total_pages")
  int totalPages;

  TopRatedTVShowsResponse(
      this.page, this.results, this.totalResults, this.totalPages);

  factory TopRatedTVShowsResponse.fromJson(Map<String, dynamic> json) =>
      _$TopRatedTVShowsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TopRatedTVShowsResponseToJson(this);
}
