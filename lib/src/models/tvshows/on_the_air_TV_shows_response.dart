import 'package:json_annotation/json_annotation.dart';

import 'TV_show_brief.dart';

part 'on_the_air_TV_shows_response.g.dart';

@JsonSerializable()
class OnTheAirTVShowsResponse {
  @JsonKey(name: "page")
  int page;
  @JsonKey(name: "results")
  List<TVShowBrief> results;
  @JsonKey(name: "total_results")
  int totalResults;
  @JsonKey(name: "total_pages")
  int totalPages;

  OnTheAirTVShowsResponse(
      this.page, this.results, this.totalResults, this.totalPages);

  factory OnTheAirTVShowsResponse.fromJson(Map<String, dynamic> json) =>
      _$OnTheAirTVShowsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OnTheAirTVShowsResponseToJson(this);
}
