class _RoutePath {
  String root = '/';
  String home = '/home';
  String buttonSamples = 'button-samples';
  String textFieldSamples = 'text_field_test-field-samples';
  String underlineTextFieldSamples = 'underline-text_field_test-field-samples';
  String outlineTextFieldSamples = 'outline-text_field_test-field-samples';
}

class _NamedRoute {
  String root = '/';
  String home = 'home';
  String buttonSamples = 'button_samples';
  String textFieldSamples = 'text_field_samples';
  String underlineTextFieldSamples = 'underline-text_field_test-field-samples';
  String outlineTextFieldSamples = 'outline-text_field_test-field-samples';
}

class DooadexRoute {
  DooadexRoute._();

  static _NamedRoute name = _NamedRoute();
  static _RoutePath path = _RoutePath();
}
