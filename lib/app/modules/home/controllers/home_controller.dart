import 'dart:developer';

import 'package:get/get.dart';
import 'package:test_app/app/data/model/book_model.dart';
import 'package:test_app/app/data/repository/book_repo.dart';

class HomeController extends GetxController {
  final BookRepo bookRepo;
  HomeController(this.bookRepo);

  @override
  void onInit() async {
    super.onInit();
    getBookByName();
  }

  BookModel? databuku;
  int jumlahbuku = 0;

  Future<void> getBookByName({String name = 'Test'}) async {
    try {
      BookModel? book = await bookRepo.getBookByName();
      if (book != null) {
        log('booksss');
        databuku = book;
        jumlahbuku = book.books!.length;
      }
      update();
    } catch (e) {
      log(e.toString());
    }
  }
}
