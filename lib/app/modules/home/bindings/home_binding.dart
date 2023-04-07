import 'package:get/get.dart';
import 'package:test_app/app/data/repository/book_repo.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BookRepo>(() => BookRepoImpl());
    Get.lazyPut<HomeController>(
      () => HomeController(Get.find()),
    );
  }
}
