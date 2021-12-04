import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peleadores_app/app/core/utils/dependency_injection.dart';
import 'package:peleadores_app/app/routes/app_pages.dart';

void main() {
  DependencyInjection.load();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),

        //  home:  ,
        initialRoute: "home",
        getPages: AppPages.pages);
  }
}
