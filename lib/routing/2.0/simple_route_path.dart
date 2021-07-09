abstract class SimpleRoutePath {}

class HomePath extends SimpleRoutePath {}

class EchoPath extends SimpleRoutePath {
  EchoPath(this.text);

  final String? text;
}
