import 'package:get_it/get_it.dart';

import 'core/services/api.dart';
import 'core/viewmodels/home_model.dart';

GetIt locator = GetIt.I;

void setupLocator() async {
  locator.registerLazySingleton(() => Api());
  locator.registerFactory(() => HomeModel());
}