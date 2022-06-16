enum RouteName {
  account('/account'),
  connect('/connect'),
  areas('/areas'),
  home('/home'),
  ;

  const RouteName(this.path);

  final String path;

  @override
  String toString() => 'The $name is $path';
}
