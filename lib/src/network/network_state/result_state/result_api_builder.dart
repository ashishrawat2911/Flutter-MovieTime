import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movietime/src/network/network_state/error/network_exceptions.dart';

import 'api_result_state.dart';

typedef ResultErrorWidget = Widget Function(
    String errorMessage, NetworkExceptions error);
typedef ResultLoadingWidget = Widget Function(bool isReloading);
typedef ReturnWidget = Widget Function();
typedef ResultDataWidget<T> = Widget Function(T value, bool isNextLoading);

class ResultStateBuilder<T> extends StatelessWidget {
  final ApiResultState<T> state;
  final ResultDataWidget<T> dataWidget;
  final ResultLoadingWidget loadingWidget;
  final ResultLoadingWidget nextReLoadingWidget;
  final ReturnWidget idleWidget;
  final ResultErrorWidget errorWidget;
  final bool showLoadingInitially;

  ResultStateBuilder(
      {@required this.state,
      @required this.dataWidget,
      @required this.loadingWidget,
      @required this.errorWidget,
      this.idleWidget,
      this.showLoadingInitially = true,
      this.nextReLoadingWidget});

  @override
  Widget build(BuildContext context) {
    return state.when(
      idle: () {
        if (idleWidget == null) {
          return Container();
        }
        return idleWidget();
      },
      loading: () {
        return loadingWidget(false);
      },
      data: (T value) {
        return dataWidget(value, false);
      },
      error: (String error, NetworkExceptions networkExceptions) {
        return errorWidget(error, networkExceptions);
      },
      unNotifiedError:
          (T data, String error, NetworkExceptions networkExceptions) {
        return dataWidget(data, false);
      },
      nextPageLoading: (T data) {
        return dataWidget(data, true);
      },
    );
  }
}

class ApiBlocBuilder<T extends Cubit<ApiResultState<S>>, S>
    extends StatelessWidget {
  final T cubit;
  final BlocWidgetListener<ApiResultState<S>> listener;
  final ResultDataWidget<S> dataWidget;
  final ResultLoadingWidget loadingWidget;
  final ReturnWidget idleWidget;
  final ResultErrorWidget errorWidget;
  final bool showLoadingInitially;

  ApiBlocBuilder(
      {this.cubit,
      @required this.dataWidget,
      @required this.loadingWidget,
      @required this.errorWidget,
      this.idleWidget,
      this.showLoadingInitially = true,
      this.listener});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<T, ApiResultState<S>>(
      cubit: cubit,
      listener: listener ?? (context, state) {},
      builder: builder,
    );
  }

  Widget builder(context, ApiResultState<S> state) {
    return state.when(
      idle: () {
        if (idleWidget == null) {
          return Container();
        }
        return idleWidget();
      },
      loading: () {
        return loadingWidget(false);
      },
      data: (S data) {
        return dataWidget(data, false);
      },
      error: (String error, NetworkExceptions networkExceptions) {
        return errorWidget(error, networkExceptions);
      },
      unNotifiedError: (S data, error, NetworkExceptions networkExceptions) {
        return dataWidget(data, false);
      },
      nextPageLoading: (S data) {
        return dataWidget(data, true);
      },
    );
  }
}

class ApiBlocListener<T extends Cubit<ApiResultState<S>>, S>
    extends StatelessWidget {
  final T cubit;
  final BlocWidgetListener<ApiResultState<S>> listener;
  final Widget child;

  ApiBlocListener({
    @required this.cubit,
    @required this.listener,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<T, ApiResultState<S>>(
      cubit: cubit,
      listener: listener,
      child: child,
    );
  }
}
