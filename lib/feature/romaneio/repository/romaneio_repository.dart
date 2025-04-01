import 'package:flutter_application_1/shared/domain/models/romaneio_model.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class RomaneioRepository {
  Future<Result<List<Romaneio>, Exception>> getRomaneios();
}
