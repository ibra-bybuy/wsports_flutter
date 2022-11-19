import 'package:injectable/injectable.dart';

import 'token_provider.dart';

const commentsTokenImpl = "CommentsTokenImpl";

@Named(commentsTokenImpl)
@LazySingleton(as: TokenProvider)
class CommentsToken extends TokenProvider {
  String _token = "";

  @override
  Future<String> getToken() async {
    return _token;
  }

  @override
  Future<bool> saveToken(String token) async {
    _token = token;
    return true;
  }
}
