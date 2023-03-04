import 'package:flutter_widgets/packages/getit/service_locator.dart';

import 'repository/repository.dart';

class Example {
  Future<Map<String, String>> getUser(String id) async {
    Map<String, String> response =
        await serviceLocator<Repository>().getUser(id);
    return response;
  }

  Future<Map<String, String>> saveUser(Map<String, String> data) async {
    final Map<String, String> response =
        await serviceLocator<Repository>().saveUser(data);

    return response;
  }
}
