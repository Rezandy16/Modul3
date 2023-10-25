import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/ModelDataFiles.dart';
import '../controllers/new_book_controller.dart';

class NewBookView extends GetView<NewBookController> {
  const NewBookView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Buku"),
      ), body: Obx(() {
      return controller.dataBuku.isEmpty
          ? Center(
        child: Text("Databuku masih kosong"),
      )
          : ListView.builder(
        itemCount: controller.dataBuku.length,
        itemBuilder: (context, index) {
          ModelDataFiles buku = controller.dataBuku[index];
          return ListTile(
            title: Text(buku.namaBuku),
            leading: Image.file(buku.foto),
          );
        },
      );
    }),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
          // Tambahkan logika tambah buku di sini
        Get.toNamed('/-tambahbuku'),
        child: Icon(Icons.add),
      ),
    );
  }
}
