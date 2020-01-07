import 'package:json_annotation/json_annotation.dart';

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
    factory   AiringTodayTVShowsResponse.fromJson(Map<String, dynamic> json) => _$  AiringTodayTVShowsResponseFromJson(json);
    Map<String, dynamic> toJson() => _$  AiringTodayTVShowsResponseToJson(this);
}
