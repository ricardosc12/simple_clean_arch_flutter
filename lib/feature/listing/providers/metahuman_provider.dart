import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../shared/domain/models/hero_model.dart';
import '../presentation/hero_api.dart';
import '../repository/metahuman_repository.dart';

final metahumanRepositoryProvider = Provider<MetahumanRepository>((ref) {
  final dio = Dio();
  final api = HeroApi(dio);
  return MetahumanRepository(api);
});

final metahumanListProvider = FutureProvider<List<HeroModel>>((ref) async {
  final repository = ref.read(metahumanRepositoryProvider);
  return repository.fetchMetahumans();
});
