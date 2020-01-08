import 'package:json_annotation/json_annotation.dart';

import 'TV_show_brief.dart';

part 'popular_TV_shows_response.g.dart';

@JsonSerializable()
class PopularTVShowsResponse {
  @JsonKey(name: "page")
  int page;
  @JsonKey(name: "results")
  List<TVShowBrief> results;
  @JsonKey(name: "total_results")
  int totalResults;
  @JsonKey(name: "total_pages")
  int totalPages;

  PopularTVShowsResponse(
      this.page, this.results, this.totalResults, this.totalPages);

  factory PopularTVShowsResponse.fromJson(Map<String, dynamic> json) =>
      _$PopularTVShowsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PopularTVShowsResponseToJson(this);
}
