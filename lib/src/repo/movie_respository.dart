import 'package:dio/dio.dart';
import 'package:flutter_movietime/src/data/kig_preferences.dart';
import 'package:flutter_movietime/src/di/app_injector.dart';
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
import 'package:flutter_movietime/src/network/network_state/network_state.dart';

import '../network/api_client.dart';

class MovieRepository {
  ApiClient apiClient;
  var apiKey = "";
  var region = "US";

  MovieRepository() {
    apiClient = ApiClient(Dio());
    AppInjector.get<KigSharedPreferences>().getRegion().then((value) {
      region = value;
    });
  }

  Future<ApiResult<T>> baseApiResultMethod<T>(Future<T> response) async {
    try {
      return ApiResult.success(data: await response);
    } catch (e) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<AiringTodayTVShowsResponse>> getAiringTodayTVShows(
      int page) async {
    return baseApiResultMethod(apiClient.getAiringTodayTVShows(apiKey, page));
  }

  Future<ApiResult<MovieCastsOfPersonResponse>> getMovieCastsOfPerson(
      int personId) {
    return baseApiResultMethod(
        apiClient.getMovieCastsOfPerson(personId, apiKey));
  }

  Future<ApiResult<MovieCreditsResponse>> getMovieCredits(int movieId) {
    return baseApiResultMethod(apiClient.getMovieCredits(movieId, apiKey));
  }

  Future<ApiResult<Movie>> getMovieDetails(int movieId) {
    return baseApiResultMethod(apiClient.getMovieDetails(movieId, apiKey));
  }

  Future<ApiResult<GenresList>> getMovieGenresList() {
    return baseApiResultMethod(apiClient.getMovieGenresList(apiKey));
  }

  Future<ApiResult<VideosResponse>> getMovieVideos(int movieId) {
    return baseApiResultMethod(apiClient.getMovieVideos(movieId, apiKey));
  }

  Future<ApiResult<NowShowingMoviesResponse>> getNowShowingMovies(int page) {
    return baseApiResultMethod(
        apiClient.getNowShowingMovies(apiKey, page, region));
  }

  Future<ApiResult<OnTheAirTVShowsResponse>> getOnTheAirTVShows(int page) {
    return baseApiResultMethod(apiClient.getOnTheAirTVShows(apiKey, page));
  }

  Future<ApiResult<Person>> getPersonDetails(int personId) {
    return baseApiResultMethod(apiClient.getPersonDetails(personId, apiKey));
  }

  Future<ApiResult<PopularMoviesResponse>> getPopularMovies(int page) {
    return baseApiResultMethod(
        apiClient.getPopularMovies(apiKey, page, region));
  }

  Future<ApiResult<PopularTVShowsResponse>> getPopularTVShows(int page) {
    return baseApiResultMethod(apiClient.getPopularTVShows(apiKey, page));
  }

  Future<ApiResult<SimilarMoviesResponse>> getSimilarMovies(
      int movieId, int page) {
    return baseApiResultMethod(
        apiClient.getSimilarMovies(movieId, apiKey, page));
  }

  Future<ApiResult<SimilarTVShowsResponse>> getSimilarTVShows(
      int movieId, int page) {
    return baseApiResultMethod(
        apiClient.getSimilarTVShows(movieId, apiKey, page));
  }

  Future<ApiResult<TVCastsOfPersonResponse>> getTVCastsOfPerson(int personId) {
    return baseApiResultMethod(apiClient.getTVCastsOfPerson(personId, apiKey));
  }

  Future<ApiResult<TVShowCreditsResponse>> getTVShowCredits(int movieId) {
    return baseApiResultMethod(apiClient.getTVShowCredits(movieId, apiKey));
  }

  Future<ApiResult<TVShow>> getTVShowDetails(int tvShowId) {
    return baseApiResultMethod(apiClient.getTVShowDetails(tvShowId, apiKey));
  }

  Future<ApiResult<GenresList>> getTVShowGenresList() {
    return baseApiResultMethod(apiClient.getTVShowGenresList(apiKey));
  }

  Future<ApiResult<VideosResponse>> getTVShowVideos(int movieId) {
    return baseApiResultMethod(apiClient.getTVShowVideos(movieId, apiKey));
  }

  Future<ApiResult<TopRatedMoviesResponse>> getTopRatedMovies(String page) {
    return baseApiResultMethod(
        apiClient.getTopRatedMovies(apiKey, page, region));
  }

  Future<ApiResult<TopRatedTVShowsResponse>> getTopRatedTVShows(int page) {
    return baseApiResultMethod(apiClient.getTopRatedTVShows(apiKey, page));
  }

  Future<ApiResult<UpcomingMoviesResponse>> getUpcomingMovies(int page) {
    return baseApiResultMethod(
        apiClient.getUpcomingMovies(apiKey, page, region));
  }
}
