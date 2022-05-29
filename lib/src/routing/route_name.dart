enum RouteName {
  signIn('/sign-in'),
  account('/account');

  const RouteName(this.path);

  final String path;

  @override
  String toString() => 'The $name is $path';
}
