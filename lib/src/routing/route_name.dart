enum RouteName {
  account('/account'),
  connect('/connect'),
  ;

  const RouteName(this.path);

  final String path;

  @override
  String toString() => 'The $name is $path';
}
