import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peleadores_app/app/modules/home/home_controller.dart';

import 'widget_tutoriales/tabbarsliver_appbar.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Scaffold(
          //backgroundColor: AppTheme.background,
          backgroundColor: Colors.black,
          body: TabBarSliverAppbar()),
    );
  }

  //

  /*
  
   @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Scaffold(
          //backgroundColor: AppTheme.background,
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "FIGHTERS",
                  style: TextStyle(color: Colors.white),
                ),
                //TabBarSliverAppbar()
              ],
            ),
          )),
    );
  }
  
  
   */
}
