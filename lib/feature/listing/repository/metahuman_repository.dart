import 'package:dio/dio.dart';

import '../../../shared/domain/models/hero_model.dart';
import '../presentation/hero_api.dart';

class MetahumanRepository {
  final HeroApi _api;

  MetahumanRepository(this._api);

  Future<List<HeroModel>> fetchMetahumans() async {
    return await _api.getHeroes();
  }
}
