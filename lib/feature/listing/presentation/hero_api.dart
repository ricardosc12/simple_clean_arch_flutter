import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../shared/domain/models/hero_model.dart';

part 'hero_api.g.dart';

@RestApi(baseUrl: "https://homologacao3.azapfy.com.br/api/ps")
abstract class HeroApi {
  factory HeroApi(Dio dio, {String baseUrl}) = _HeroApi;

  @GET("/metahumans")
  Future<List<HeroModel>> getHeroes();
}
