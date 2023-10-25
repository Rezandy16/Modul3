import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Book"),
        ),
        body: controller.buildGradientContainer(
          context,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/cover_1.png',
                  width: 300,
                  height: 300,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => Get.toNamed("/genres"),
                  child: Text('Masuk'),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () => Get.toNamed("/json"),
                  child: Text('Data'),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                },
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                },
              ),
              IconButton(
                icon: Icon(Icons.book),
                onPressed: () {
                },
              ),
              IconButton(
                icon: Icon(Icons.attach_money),
                onPressed: () {
                },
              ),
            ],
          ),
        ),
      );
  }
}
