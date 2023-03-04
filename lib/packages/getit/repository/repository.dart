abstract class Repository {
  Future<Map<String, String>> getUser(String id);
  Future<Map<String, String>> saveUser(Map<String, String> data);
}
