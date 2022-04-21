class _NamedRoute {
  String root = '/';
  String home = 'home';
  String buttonSamples = 'button_samples';
}

class _RoutePath {
  String root = '/';
  String home = '/home';
  String buttonSamples = '/home/button-samples';
}

class DooadexRoute {
  DooadexRoute._();

  static _NamedRoute name = _NamedRoute();
  static _RoutePath path = _RoutePath();
}
