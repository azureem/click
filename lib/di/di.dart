

import 'package:click_uz/data/source/remote/service/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final di =GetIt.instance;

final dio = Dio(BaseOptions(
baseUrl: "http://195.158.16.140/mobile-bank/"
));

void setUp(){

di.registerSingleton<ApiService>(ApiService(dio));


}