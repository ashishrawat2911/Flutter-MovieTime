

 import 'package:json_annotation/json_annotation.dart';

class Network {

    @JsonKey(name:"id")
     Integer id;
    @JsonKey(name:"name")
     String name;

    Network(this.id, this.name);
    factory Network.fromJson(Map<String, dynamic> json) => _$NetworkFromJson(json);
    Map<String, dynamic> toJson() => _$NetworkToJson(this);
}
