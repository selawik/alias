import 'package:alias/src/core/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

GetIt locator = GetIt.instance;

@injectableInit
void configureDependencies() => locator.init();
