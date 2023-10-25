import 'package:get/get.dart';

import '../controllers/genres_controller.dart';

class GenresBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GenresController>(
      () => GenresController(),
    );
  }
}
