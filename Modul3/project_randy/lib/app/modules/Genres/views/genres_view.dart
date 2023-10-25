import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/genres_controller.dart';

class GenresView extends GetView<GenresController> {
  const GenresView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Jelajahi Berbagai Genre'),
      ),
      body: controller.buildGradientContainer(
        context,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Silakan memilih genre buku yang menarik untuk dibaca',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                controller.buildGenreWidget(context,'Klasik'),
                controller.buildGenreWidget(context,'Romantis'),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                controller.buildGenreWidget(context,'Fantasi'),
                controller.buildGenreWidget(context,'Fiksi'),
              ],
            ),SizedBox(height: 20),
            Center(

                      child : controller.buildGenreWidget(context,'Buku Baru'),


                ),
              ],
            ),

        ),
      );
}}
