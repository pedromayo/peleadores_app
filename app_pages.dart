import 'package:get/route_manager.dart';
import 'package:peleadores_app/app/modules/home/home_binding.dart';
import 'package:peleadores_app/app/modules/home/home_page.dart';
import 'package:peleadores_app/app/routes/app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: AppRoutes.HOME, page: () => HomePage(), binding: HomeBinding())
  ];
}
