import 'package:json_annotation/json_annotation.dart';

import 'TV_cast_of_person.dart';

part 'TV_casts_of_person_response.g.dart';

@JsonSerializable()
class TVCastsOfPersonResponse {
  @JsonKey(name: "cast")
  List<TVCastOfPerson> casts;

  //crew missing
  @JsonKey(name: "id")
  int id;

  TVCastsOfPersonResponse(this.casts, this.id);

  factory TVCastsOfPersonResponse.fromJson(Map<String, dynamic> json) =>
      _$TVCastsOfPersonResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TVCastsOfPersonResponseToJson(this);
}
