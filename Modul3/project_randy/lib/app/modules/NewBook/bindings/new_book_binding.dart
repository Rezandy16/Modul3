import 'package:get/get.dart';

import '../controllers/new_book_controller.dart';

class NewBookBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewBookController>(
      () => NewBookController(),
    );
  }
}
