import '../repository/repository.dart';

class Service implements Repository {
  @override
  Future<Map<String, String>> getUser(String id) async {
    return await Future.delayed(const Duration(milliseconds: 1000))
        .then((value) => {"id": id, "name": "Michael", "age": "23"});
  }

  @override
  Future<Map<String, String>> saveUser(Map<String, String> data) async {
    return await Future.delayed(const Duration(milliseconds: 1000))
        .then((value) => data);
  }
}
