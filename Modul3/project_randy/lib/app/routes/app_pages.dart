import 'package:get/get.dart';
import 'package:project_randy/app/modules/JSON/bindings/json_binding.dart';

import '../modules/BookPages/bindings/book_pages_binding.dart';
import '../modules/BookPages/views/book_pages_view.dart';
import '../modules/Genres/bindings/genres_binding.dart';
import '../modules/Genres/views/genres_view.dart';
import '../modules/JSON/View/json_view.dart';
import '../modules/NewBook/bindings/new_book_binding.dart';
import '../modules/NewBook/views/new_book_view.dart';
import '../modules/TambahBuku/bindings/tambah_buku_binding.dart';
import '../modules/TambahBuku/views/tambah_buku_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.GENRES,
      page: () => const GenresView(),
      binding: GenresBinding(),
    ),
    GetPage(
      name: _Paths.BOOK_PAGES,
      page: () => const BookPagesView(),
      binding: BookPagesBinding(),
    ),
    GetPage(
      name: _Paths.NEW_BOOK,
      page: () => const NewBookView(),
      binding: NewBookBinding(),
    ),
    GetPage(
      name: _Paths.TAMBAH_BUKU,
      page: () => const TambahBukuView(),
      binding: TambahBukuBinding(),
    ),
    GetPage(
      name: _Paths.JSON,
      page: () => JsonView(),
      binding: JsonBinding(),
    ),
  ];
}
