abstract class TokenProvider {
  Future<String> getToken();
  Future<bool> saveToken(String token);
}
