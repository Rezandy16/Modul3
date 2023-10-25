import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/book_pages_controller.dart';

class BookPagesView extends GetView<BookPagesController> {
  const BookPagesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(controller.genre),
      ),
      body: controller.buildGradientContainer(
        context,
        child: Center(
          child: Card(
            elevation: 4,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset(
                  'assets/gambar_3.jpeg',
                  width: 100,
                  height: 150,
                ),
                ListTile(
                  title: Text('Judul Buku'),
                  subtitle: Text('Penulis Buku'),
                ),
                ButtonBar(
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        controller.showStory(context);
                      },
                      child: Text('Baca Sinopsis'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
