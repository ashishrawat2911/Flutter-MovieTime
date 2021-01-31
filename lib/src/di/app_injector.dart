import 'package:flutter_movietime/src/repo/movie_respository.dart';
import 'package:get_it/get_it.dart';

GetIt _injector = GetIt.I;

class AppInjector {
  AppInjector._internal();

  static T get<T>({String instanceName, dynamic param1, dynamic param2}) =>
      _injector<T>(instanceName: instanceName, param1: param1, param2: param2);

  static void create() {
    _initRepos();
    _initNotifiers();
    _initBlocs();
  }

  static _initRepos() {
    _injector.registerLazySingleton(() => MovieRepository());
  }

  static void _initNotifiers() {
    // _injector.registerFactory(() => SetUpContestProvider(get()));
  }

  static void _initBlocs() {}

  static close() {
    _injector.reset();
  }
}
