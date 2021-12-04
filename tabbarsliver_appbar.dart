import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peleadores_app/app/modules/home/home_controller.dart';
import 'package:peleadores_app/app/modules/home/widget_tutoriales/image_widget.dart';
import 'package:peleadores_app/app/modules/home/widgets/fighter_card.dart';

class TabBarSliverAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (context, value) {
              return [
                SliverAppBar(
                  title: Text("MyApp.title"),
                  bottom: TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.map), text: 'Tab 1'),
                      Tab(icon: Icon(Icons.portrait), text: 'Tab 2'),
                    ],
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: [
                buildImagesConHomeController(),
                buildImages(),
              ],
            ),
          ),
        ),
      );

  /*Widget buildImages() => GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 20,
        itemBuilder: (context, index) => ImageWidget(index: index),
      );*/

  Widget buildImages() => GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 20,
        itemBuilder: (context, index) => ImageWidget(index: index),
      );

  Widget buildImagesConHomeController() => GetBuilder<HomeController>(
      builder: (_) => GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: _.fighters.length,
            itemBuilder: (context, index) =>
                FighterCard(item: _.fighters[index]),
          ));
}
