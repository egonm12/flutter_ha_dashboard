import 'package:dio/dio.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:mocktail/mocktail.dart';

class FakeAuthorizationTokenRequest extends Fake
    implements AuthorizationTokenRequest {}

class FakeTokenRequest extends Fake implements TokenRequest {}

class FakeResponse<T> extends Fake implements Response<T> {}

class MockRequestOptions extends Fake implements RequestOptions {}
