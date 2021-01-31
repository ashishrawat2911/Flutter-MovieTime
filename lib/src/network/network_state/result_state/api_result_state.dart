import 'package:flutter/foundation.dart';
import 'package:flutter_movietime/src/network/network_state/network_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result_state.freezed.dart';

@freezed
abstract class ApiResultState<T> with _$ApiResultState<T> {
  const factory ApiResultState.idle() = IdleState<T>;

  const factory ApiResultState.loading() = LoadingState<T>;

  const factory ApiResultState.nextPageLoading({@required T data}) = NextPageLoading<T>;

  const factory ApiResultState.data({@required T data}) = OnDataState<T>;

  const factory ApiResultState.error(
      {@required String errorMessage,
      @required NetworkExceptions networkException}) = ErrorState<T>;

  const factory ApiResultState.unNotifiedError(
      {@required T data,
      @required String errorMessage,
      @required NetworkExceptions networkException}) = UnNotifiedErrorState<T>;
}
