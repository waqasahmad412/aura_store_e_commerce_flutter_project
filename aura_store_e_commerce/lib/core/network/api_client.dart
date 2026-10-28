abstract class ApiClient {
  Future<dynamic> get(String url);
  Future<dynamic> post(String url, {Map<String, dynamic>? data});
}
