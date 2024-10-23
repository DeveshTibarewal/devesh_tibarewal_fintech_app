class RouteNames {
  static const String splash = "splash";
  static const String login = "login";
  static const String register = "register";
  static const String home = "home";
  static const String profile = "profile";
}

extension GoRouterPath on String {
  String get asPath => '/$this';
}
