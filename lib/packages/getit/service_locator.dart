import 'package:get_it/get_it.dart';

import 'repository/repository.dart';
import 'services/service.dart';

final serviceLocator = GetIt.instance;

void init() {
  serviceLocator.registerSingleton<Repository>(Service());
}
