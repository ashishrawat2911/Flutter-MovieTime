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
import 'package:flutter_movietime/src/network/api_client.dart';

class Repository {
   
  Future<AiringTodayTVShowsResponse> getAiringTodayTVShows(String apiKey, int page) {

  }

   
  Future<MovieCastsOfPersonResponse> getMovieCastsOfPerson(int personId, String apiKey) {
    // TODO: implement getMovieCastsOfPerson
    return null;
  }

   
  Future<MovieCreditsResponse> getMovieCredits(int movieId, String apiKey) {
    // TODO: implement getMovieCredits
    return null;
  }

   
  Future<Movie> getMovieDetails(int movieId, String apiKey) {
    // TODO: implement getMovieDetails
    return null;
  }

   
  Future<GenresList> getMovieGenresList(String apiKey) {
    // TODO: implement getMovieGenresList
    return null;
  }

   
  Future<VideosResponse> getMovieVideos(int movieId, String apiKey) {
    // TODO: implement getMovieVideos
    return null;
  }

   
  Future<NowShowingMoviesResponse> getNowShowingMovies(String apiKey, int page, String region) {
    // TODO: implement getNowShowingMovies
    return null;
  }

   
  Future<OnTheAirTVShowsResponse> getOnTheAirTVShows(String apiKey, int page) {
    // TODO: implement getOnTheAirTVShows
    return null;
  }

   
  Future<Person> getPersonDetails(int personId, String apiKey) {
    // TODO: implement getPersonDetails
    return null;
  }

   
  Future<PopularMoviesResponse> getPopularMovies(String apiKey, int page, String region) {
    // TODO: implement getPopularMovies
    return null;
  }

   
  Future<PopularTVShowsResponse> getPopularTVShows(String apiKey, int page) {
    // TODO: implement getPopularTVShows
    return null;
  }

   
  Future<SimilarMoviesResponse> getSimilarMovies(int movieId, String apiKey, int page) {
    // TODO: implement getSimilarMovies
    return null;
  }

   
  Future<SimilarTVShowsResponse> getSimilarTVShows(int movieId, String apiKey, int page) {
    // TODO: implement getSimilarTVShows
    return null;
  }

   
  Future<TVCastsOfPersonResponse> getTVCastsOfPerson(int personId, String apiKey) {
    // TODO: implement getTVCastsOfPerson
    return null;
  }

   
  Future<TVShowCreditsResponse> getTVShowCredits(int movieId, String apiKey) {
    // TODO: implement getTVShowCredits
    return null;
  }

   
  Future<TVShow> getTVShowDetails(int tvShowId, String apiKey) {
    // TODO: implement getTVShowDetails
    return null;
  }

   
  Future<GenresList> getTVShowGenresList(String apiKey) {
    // TODO: implement getTVShowGenresList
    return null;
  }

   
  Future<VideosResponse> getTVShowVideos(int movieId, String apiKey) {
    // TODO: implement getTVShowVideos
    return null;
  }

   
  Future<TopRatedMoviesResponse> getTopRatedMovies(String apiKey, String page, String region) {
    // TODO: implement getTopRatedMovies
    return null;
  }

   
  Future<TopRatedTVShowsResponse> getTopRatedTVShows(String apiKey, int page) {
    // TODO: implement getTopRatedTVShows
    return null;
  }

   
  Future<UpcomingMoviesResponse> getUpcomingMovies(String apiKey, int page, String region) {
    // TODO: implement getUpcomingMovies
    return null;
  }

}