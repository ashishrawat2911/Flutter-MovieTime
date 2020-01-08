import 'package:flutter_movietime/src/models/movie/movie_cast_of_persons.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_caste_of_persons_response.g.dart';

@JsonSerializable()
class MovieCastsOfPersonResponse {
  @JsonKey(name: "cast")
  List<MovieCastOfPerson> casts;

  //crew missing
  @JsonKey(name: "id")
  int id;

  MovieCastsOfPersonResponse(this.casts, this.id);

  factory MovieCastsOfPersonResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieCastsOfPersonResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieCastsOfPersonResponseToJson(this);
}
