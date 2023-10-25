import 'package:get/get.dart';
import 'package:flutter/material.dart';
class GenresController extends GetxController {
  //TODO: Implement GenresController
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
  Widget buildGenreWidget(BuildContext context, String genre) {
    return Container(
      width: 150,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(color: Colors.white, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        onPressed: () =>  genre == "Buku Baru" ? Get.toNamed("/new-book") : Get.toNamed("/book-pages",arguments: genre),
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          onPrimary: Colors.white,
        ),
        child: Text(
          genre,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
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
