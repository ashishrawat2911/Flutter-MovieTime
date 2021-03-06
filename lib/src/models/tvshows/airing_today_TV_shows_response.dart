import 'package:json_annotation/json_annotation.dart';

import 'TV_show_brief.dart';

part 'airing_today_TV_shows_response.g.dart';

@JsonSerializable()
class AiringTodayTVShowsResponse {
  @JsonKey(name: "page")
  int page;
  @JsonKey(name: "results")
  List<TVShowBrief> results;
  @JsonKey(name: "total_results")
  int totalResults;
  @JsonKey(name: "total_pages")
  int totalPages;

  AiringTodayTVShowsResponse(
      this.page, this.results, this.totalResults, this.totalPages);

  factory AiringTodayTVShowsResponse.fromJson(Map<String, dynamic> json) =>
      _$AiringTodayTVShowsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AiringTodayTVShowsResponseToJson(this);
}
