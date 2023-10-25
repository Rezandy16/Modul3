import 'package:get/get.dart';

import '../controllers/book_pages_controller.dart';

class BookPagesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BookPagesController>(
      () => BookPagesController(),
    );
  }
}
