import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tambah_buku_controller.dart';

class TambahBukuView extends GetView<TambahBukuController> {
  const TambahBukuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Buku"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(() {
              return controller.selectedImage.value == null
                  ? Text("Pilih gambar terlebih dahulu.")
                  : Image.file(controller.selectedImage.value! as File);
            }),
            ElevatedButton(
              onPressed: () {
                controller.pickImage();
              },
              child: Text("Pilih Gambar"),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                onChanged: (text) {
                  controller.judulBuku = text;
                },
                decoration: InputDecoration(labelText: "Judul Buku"),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk menyimpan data buku ke database atau lokasi penyimpanan
                print("Judul Buku: ${controller.judulBuku}");
                if (controller.selectedImage.value != null) {
                  print("Path Gambar: ${controller.selectedImage.value!.path}");
                  controller.pushData();
                }
              },
              child: Text("Simpan Buku"),
            ),
          ],
        ),
      ),
    );
  }
}
