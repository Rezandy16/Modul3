import 'package:get/get.dart';
import 'dart:io';
import '../../../data/ModelDataFiles.dart';
class NewBookController extends GetxController {
  //TODO: Implement NewBookController
  final RxList<ModelDataFiles> dataBuku = <ModelDataFiles>[].obs;



  final count = 0.obs;

  void addData(String name , File file){
    dataBuku.add(ModelDataFiles(namaBuku: name , foto : file));
  }
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
