import 'package:get/get.dart';
import 'package:peleadores_app/app/data/providers/fighter_provider.dart';
import 'package:peleadores_app/app/data/repositories/fighter_repository.dart';

class DependencyInjection {
  static void load() {
    //houses provider
    Get.put<FighterProvider>(FighterProvider());

    Get.put<FighterRepository>(FighterRepository());
  }
}
