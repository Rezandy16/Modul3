import 'package:get/get.dart';

import '../Controllers/json_controllers.dart';

class JsonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JsonController>(
          () => JsonController(),
    );
  }
}