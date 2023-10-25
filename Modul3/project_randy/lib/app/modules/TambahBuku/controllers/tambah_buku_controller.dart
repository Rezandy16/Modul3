import 'dart:io';

import 'package:get/get.dart' as getX; // Aliaskan import GetX
import 'package:image_picker/image_picker.dart';
import 'package:project_randy/app/modules/NewBook/controllers/new_book_controller.dart';

class TambahBukuController extends getX.GetxController {
  //TODO: Implement TambahBukuController
  String judulBuku = "Buku";
  final selectedImage = getX.Rx<File?>(null);
  NewBookController newBookController =
      MyCustomGet.find() ?? NewBookController();

  void pushData() {
    newBookController.addData(judulBuku, selectedImage.value!);
  }

  void pickImage() async {
    final imagePicker = ImagePicker();
    final pickedImage =
        await imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      selectedImage.value = File(pickedImage.path);
    }
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

class MyCustomGet {
  static NewBookController? find() {}
}
