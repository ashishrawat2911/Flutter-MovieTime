import 'package:flutter_movietime/src/models/video/video.dart';
import 'package:json_annotation/json_annotation.dart';

part 'video_response.g.dart';

@JsonSerializable()
class VideosResponse {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "results")
  List<Video> videos;

  VideosResponse(this.id, this.videos);

  factory VideosResponse.fromJson(Map<String, dynamic> json) =>
      _$VideosResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VideosResponseToJson(this);
}
