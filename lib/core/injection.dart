import 'package:alias/core/router/app_router.dart';
import 'package:get_it/get_it.dart';

var locator = GetIt.instance;

void initLocator() {
  _initDataSources();
  _initRepository();
  _initUseCases();
  _initBlocs();

  /// Router
  locator.registerSingleton<AppRouter>(AppRouter());
}

void _initBlocs() {}

void _initRepository() {}

void _initUseCases() {}

void _initDataSources() {}
