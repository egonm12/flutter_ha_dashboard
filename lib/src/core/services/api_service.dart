import 'dart:io';

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

/// Class is used to make API requests.
@RestApi()
abstract class ApiService {
  factory ApiService(
    Dio dio, {
    String baseUrl,
  }) = _ApiService;

  /// https://developers.home-assistant.io/docs/auth_api/#revoking-a-refresh-token
  @POST('/auth/token')
  @Headers(<String, String>{
    HttpHeaders.contentTypeHeader: 'application/x-www-form-urlencoded'
  })
  Future<void> revokeRefreshToken(@Body() Map<String, String> data);
}
