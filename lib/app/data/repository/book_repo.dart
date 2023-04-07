import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:test_app/app/data/model/book_model.dart';
import 'package:test_app/app/util/url_api.dart';

abstract class BookRepo {
  Future<BookModel?> getBookByName();
}

class BookRepoImpl implements BookRepo {
  @override
  Future<BookModel?> getBookByName() async {
    try {
      final response = await Dio().get(UrlApi.getBookByName);

      BookModel? res = BookModel.fromJson(response.data);
      return res;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}
