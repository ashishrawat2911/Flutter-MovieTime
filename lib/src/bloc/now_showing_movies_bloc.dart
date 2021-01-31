import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movietime/src/di/app_injector.dart';
import 'package:flutter_movietime/src/models/movie/movie_brief.dart';
import 'package:flutter_movietime/src/models/movie/now_showing_movies_response.dart';
import 'package:flutter_movietime/src/network/network_state/network_state.dart';
import 'package:flutter_movietime/src/network/network_state/result_state/api_result_state.dart';
import 'package:flutter_movietime/src/repo/movie_respository.dart';

class NowShowingMovieCubit extends Cubit<ApiResultState<List<MovieBrief>>> {
  NowShowingMovieCubit() : super(ApiResultState.idle());
  MovieRepository movieRepository = AppInjector.get();

  int page = 0;

  getNowShowingMovies() async {
    emit(ApiResultState.loading());
    var data = await movieRepository.getNowShowingMovies(page);

    data.map(
      success: (value) {
        emit(ApiResultState.data(data: value.data.results));
      },
      failure: (value) {
        emit(
          ApiResultState.error(
              errorMessage: NetworkExceptions.getErrorMessage(value.error),
              networkException: value.error),
        );
      },
    );
  }

  getNextNowShowingMovies() async {
    ++page;
    var response = (state as OnDataState<NowShowingMoviesResponse>).data;
    var list = response.results;
    emit(ApiResultState.nextPageLoading(data: list));
    var data = await movieRepository.getNowShowingMovies(page);
    data.map(
      success: (value) {
        list.addAll(value.data.results);
        emit(ApiResultState.data(data: list));
      },
      failure: (value) {
        --page;
        emit(
          ApiResultState.unNotifiedError(
              data: list,
              errorMessage: NetworkExceptions.getErrorMessage(value.error),
              networkException: value.error),
        );
      },
    );
  }
}
