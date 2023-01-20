import 'package:alias/core/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

var locator = GetIt.instance;

@injectableInit
void configureDependencies() => locator.init();
