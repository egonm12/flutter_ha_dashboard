enum RouteName {
  account('/account'),
  connect('/connect'),
  areas('/areas'),
  ;

  const RouteName(this.path);

  final String path;

  @override
  String toString() => 'The $name is $path';
}
