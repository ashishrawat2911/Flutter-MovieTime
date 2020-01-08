import 'package:json_annotation/json_annotation.dart';

import 'TV_show_cast_brief.dart';
import 'TV_show_crew_brief.dart';

part 'TV_show_credits_response.g.dart';

@JsonSerializable()
class TVShowCreditsResponse {
  @JsonKey(name: "cast")
  List<TVShowCastBrief> casts;
  @JsonKey(name: "crew")
  List<TVShowCrewBrief> crews;
  @JsonKey(name: "id")
  int id;

  TVShowCreditsResponse(this.casts, this.crews, this.id);

  factory TVShowCreditsResponse.fromJson(Map<String, dynamic> json) =>
      _$TVShowCreditsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TVShowCreditsResponseToJson(this);
}
