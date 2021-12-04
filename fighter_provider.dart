import 'package:dio/dio.dart';
import 'package:peleadores_app/app/core/config/config.dart';
import 'package:peleadores_app/app/data/models/fighter_model.dart';

class FighterProvider {
  Future<List<FighterModel>> getFighters() async {
    final dio = Dio();
    final response = await dio.get("$kBaseUrl");
    print(response.data["results"]);
    return (response.data["results"] as List)
        .map((json) => FighterModel.fromJson(json))
        .toList();
  }
}
