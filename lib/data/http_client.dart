import 'package:http/http.dart';

class HttpClient {
  static Client? client;

  static Client get global {
    client ??= Client();

    return client!;
  }
}
