import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:retrofit/retrofit.dart';

import 'package:flutter_ha_dashboard/src/core/services/api_service.dart';
import '../../fakes.dart';
import '../../mocks/mocks.dart';

void main() {
  group('ApiService', () {
    late final Dio dio;
    late final ApiService apiService;

    setUpAll(() {
      registerFallbackValue(FakeResponse<void>());
      registerFallbackValue(FakeRequestOptions());

      dio = MockDio();
      apiService = ApiService(dio);

      when(() => dio.options).thenReturn(BaseOptions());
    });

    group('revokeRefreshToken', () {
      setUpAll(() {
        when(() => dio.fetch<void>(any())).thenAnswer(
          (_) => Future.value(
            FakeResponse<void>(),
          ),
        );
      });

      test(
          'performs a POST request to /auth/token with the correct headers and data',
          () async {
        final Map<String, String> data = {'foo': 'bar'};
        await apiService.revokeRefreshToken(data);

        final call = verify(() => dio.fetch<void>(captureAny()));

        expect(call.callCount, 1);
        expect(call.captured.length, 1);

        final requestOptions = call.captured.first as RequestOptions;

        expect(
          requestOptions.method,
          HttpMethod.POST,
        );
        expect(
          requestOptions.path,
          '/auth/token',
        );
        expect(
          requestOptions.headers[HttpHeaders.contentTypeHeader],
          'application/x-www-form-urlencoded',
        );
        expect(
          requestOptions.data,
          data,
        );
      });
    });
  });
}
