import 'package:dio/dio.dart';
import 'package:flutter_movietime/src/models/genre/genres_list.dart';
import 'package:flutter_movietime/src/models/movie/movie.dart';
import 'package:flutter_movietime/src/models/movie/movie_caste_of_persons_response.dart';
import 'package:flutter_movietime/src/models/movie/movie_credits_response.dart';
import 'package:flutter_movietime/src/models/movie/now_showing_movies_response.dart';
import 'package:flutter_movietime/src/models/movie/popular_movies_response.dart';
import 'package:flutter_movietime/src/models/movie/similar_movies_response.dart';
import 'package:flutter_movietime/src/models/movie/top_rated_movies_response.dart';
import 'package:flutter_movietime/src/models/movie/upcoming_movies_response.dart';
import 'package:flutter_movietime/src/models/person/person.dart';
import 'package:flutter_movietime/src/models/tvshows/TV_casts_of_person_response.dart';
import 'package:flutter_movietime/src/models/tvshows/TV_show.dart';
import 'package:flutter_movietime/src/models/tvshows/TV_show_credits_response.dart';
import 'package:flutter_movietime/src/models/tvshows/airing_today_TV_shows_response.dart';
import 'package:flutter_movietime/src/models/tvshows/on_the_air_TV_shows_response.dart';
import 'package:flutter_movietime/src/models/tvshows/popular_TV_shows_response.dart';
import 'package:flutter_movietime/src/models/tvshows/similar_TV_shows_response.dart';
import 'package:flutter_movietime/src/models/tvshows/top_rated_TV_shows_response.dart';
import 'package:flutter_movietime/src/models/video/video_response.dart';
import 'package:retrofit/http.dart';

part 'api_client.g.dart';

//https://github.com/ashishrawat2911/Android-MovieTime/tree/master/app/src/main/java/com/rawat/ashish/movietime/network
@RestApi(baseUrl: "https://api.themoviedb.org/3/")
abstract class ApiClient {
  factory ApiClient(Dio dio) = _ApiClient;

  @GET("movie/now_playing")
  Future<NowShowingMoviesResponse> getNowShowingMovies(
      @Query("api_key") String apiKey,
      @Query("page") int page,
      @Query("region") String region);

  @GET("movie/popular")
  Future<PopularMoviesResponse> getPopularMovies(
      @Query("api_key") String apiKey,
      @Query("page") int page,
      @Query("region") String region);

  @GET("movie/upcoming")
  Future<UpcomingMoviesResponse> getUpcomingMovies(
      @Query("api_key") String apiKey, @Query("page") int page,
      @Query("region") String region);

  @GET("movie/top_rated")
  Future<TopRatedMoviesResponse> getTopRatedMovies(
      @Query("api_key") String apiKey, @Query("page") String page,
      @Query("region") String region);

  @GET("movie/{id}")
  Future<Movie> getMovieDetails(@Path("id") int movieId,
      @Query("api_key") String apiKey);

  @GET("movie/{id}/videos")
  Future<VideosResponse> getMovieVideos(@Path("id") int movieId,
      @Query("api_key") String apiKey);

  @GET("movie/{id}/credits")
  Future<MovieCreditsResponse> getMovieCredits(@Path("id") int movieId,
      @Query("api_key") String apiKey);

  @GET("movie/{id}/similar")
  Future<SimilarMoviesResponse> getSimilarMovies(@Path("id") int movieId,
      @Query("api_key") String apiKey, @Query("page") int page);

  @GET("genre/movie/list")
  Future<GenresList> getMovieGenresList(@Query("api_key") String apiKey);

  //TV SHOWS

  @GET("tv/airing_today")
  Future<AiringTodayTVShowsResponse> getAiringTodayTVShows(
      @Query("api_key") String apiKey, @Query("page") int page);

  @GET("tv/on_the_air")
  Future<OnTheAirTVShowsResponse> getOnTheAirTVShows(
      @Query("api_key") String apiKey, @Query("page") int page);

  @GET("tv/popular")
  Future<PopularTVShowsResponse> getPopularTVShows(
      @Query("api_key") String apiKey, @Query("page") int page);

  @GET("tv/top_rated")
  Future<TopRatedTVShowsResponse> getTopRatedTVShows(
      @Query("api_key") String apiKey, @Query("page") int page);

  @GET("tv/{id}")
  Future<TVShow> getTVShowDetails(@Path("id") int tvShowId,
      @Query("api_key") String apiKey);

  @GET("tv/{id}/videos")
  Future<VideosResponse> getTVShowVideos(@Path("id") int movieId,
      @Query("api_key") String apiKey);

  @GET("tv/{id}/credits")
  Future<TVShowCreditsResponse> getTVShowCredits(@Path("id") int movieId,
      @Query("api_key") String apiKey)
  ;

  @GET("tv/{id}/similar")
  Future<SimilarTVShowsResponse> getSimilarTVShows(@Path("id") int movieId,
      @Query("api_key") String apiKey, @Query("page") int page);

  @GET("genre/tv/list")
  Future<GenresList> getTVShowGenresList(@Query("api_key") String apiKey);

  //PERSON

  @GET("person/{id}")
  Future<Person> getPersonDetails(@Path("id") int personId,
      @Query("api_key") String apiKey);

  @GET("person/{id}/movie_credits")
  Future<MovieCastsOfPersonResponse> getMovieCastsOfPerson(
      @Path("id") int personId, @Query("api_key") String apiKey);

  @GET("person/{id}/tv_credits")
  Future<TVCastsOfPersonResponse> getTVCastsOfPerson(@Path("id") int personId,
      @Query("api_key") String apiKey);


}