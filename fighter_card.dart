import 'package:flutter/material.dart';

import 'package:peleadores_app/app/data/models/fighter_model.dart';

class FighterCard extends StatelessWidget {
  // const CategoryCardItem({Key? key}) : super(key: key);

  final double borderRadius = 15.00;

  /*final String titulo;
  final String subtitulo;*/

  final FighterModel item;

  FighterCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, _, __) => DetailView(),
            ));
      },
      child: Container(
        width: 150,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(borderRadius),
          image: DecorationImage(
              //image: AssetImage("assets/" + item.image + ".jpg"),
              image: AssetImage("assets/images/dog1.jpg"), //por mientras.
              fit: BoxFit.cover //fill/contain
              ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(borderRadius),
                        bottomRight: Radius.circular(borderRadius))),
                child: Padding(
                  padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyCustomText(
                          texto: item.nombre ?? "sin mombre", tamano: 20),
                      MyCustomText(
                        texto: item.alias ?? "sin alias",
                        tamano: 16,
                        esTitulo: false,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyCustomText extends StatelessWidget {
  //const CustomText({Key? key}) : super(key: key);
  final String texto;
  final double tamano;
  final bool esTitulo;
  final Color color;

  MyCustomText(
      {required this.texto,
      required this.tamano,
      this.esTitulo = true,
      this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$texto",
      style: TextStyle(
          fontWeight: esTitulo ? FontWeight.bold : FontWeight.normal,
          fontSize: tamano,
          color: color),
      maxLines: 2,
    );
  }
}

class DetailView extends StatelessWidget {
  const DetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("en detalle"),
    );
  }
}
