
import 'package:dio/dio.dart';
import 'package:flutter_movietime/models/person.dart';
import 'package:flutter_movietime/src/models/person.dart';
import 'package:retrofit/http.dart';

@RestApi(baseUrl: "https://api.themoviedb.org/3/")
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  @GET("person/{id}")
  Future<List<Person>> getPersonDetails(@Path("id") int personId, @Query("api_key") String apiKey);

}