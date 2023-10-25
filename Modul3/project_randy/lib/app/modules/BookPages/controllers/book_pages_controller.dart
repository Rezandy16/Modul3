import 'package:get/get.dart';
import 'package:flutter/material.dart';
class BookPagesController extends GetxController {
  late String genre;
  Widget buildGradientContainer(BuildContext context, {required Widget child}) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.blue, Colors.green],
        ),
      ),
      child: child,
    );
  }
  String _getSynopsis() {
    String synopsis = '';
    if (genre == 'Klasik') {
      synopsis = 'Ini adalah sinopsis cerita klasik yang menarik.';
    } else if (genre == 'Romantis') {
      synopsis = 'Ini adalah sinopsis cerita romantis yang penuh dengan kisah cinta.';
    } else if (genre == 'Fantasi') {
      synopsis = 'Ini adalah sinopsis cerita fantasi dengan dunia ajaib dan petualangan seru.';
    } else if (genre == 'Fiksi') {
      synopsis = 'Ini adalah sinopsis cerita fiksi yang menghadirkan konflik mendalam.';
    }
    else if (genre == 'Buku Baru') {
      Get.toNamed("/new-book");
    }
    return synopsis;
  }

  void showStory(BuildContext context) {
    String synopsis = _getSynopsis();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(genre),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(
                'assets/gambar_2.png',
                width: 100,
                height: 150,
              ),
              SizedBox(height: 20),
              Text(synopsis),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Tutup'),
            ),
          ],
        );
      },
    );
  }
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    var data = Get.arguments;
    genre = data;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
