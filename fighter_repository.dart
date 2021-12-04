import 'package:get/get.dart';
import 'package:peleadores_app/app/data/models/fighter_model.dart';
import 'package:peleadores_app/app/data/providers/fighter_provider.dart';

class FighterRepository {
  final _apiProvider = Get.find<FighterProvider>();

  Future<List<FighterModel>> getFighters() => _apiProvider.getFighters();
}
