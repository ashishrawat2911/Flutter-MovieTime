import 'package:json_annotation/json_annotation.dart';

import 'movie_cast_brief.dart';
import 'movie_crew_brief.dart';

part 'movie_credits_response.g.dart';

@JsonSerializable()
class MovieCreditsResponse {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "cast")
  List<MovieCastBrief> casts;
  @JsonKey(name: "crew")
  List<MovieCrewBrief> crews;

  MovieCreditsResponse(this.id, this.casts, this.crews);

  factory MovieCreditsResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieCreditsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieCreditsResponseToJson(this);
}
