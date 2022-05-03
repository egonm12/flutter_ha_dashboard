import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:mocktail/mocktail.dart';

class FakeAuthorizationTokenRequest extends Fake
    implements AuthorizationTokenRequest {}

class FakeTokenRequest extends Fake implements TokenRequest {}
