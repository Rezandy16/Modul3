import 'package:get/get.dart';
import 'package:flutter/material.dart';
class HomeController extends GetxController {
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
