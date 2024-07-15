import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio,{String baseUrl}) = _ApiService;

  // @POST("v1/card")
  // Future<String> addCard(@Body() AddCardRequest data );

}