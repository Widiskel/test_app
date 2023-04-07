import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: GetBuilder<HomeController>(builder: (controller) {
        if (controller.jumlahbuku != 0) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: controller.jumlahbuku,
                  itemBuilder: (context, index) {
                    if (controller.jumlahbuku != 0) {
                      return GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: const EdgeInsets.all(20),
                          width: 316.w,
                          height: 96.h,
                          color: Colors.amber,
                          child: Row(
                            children: [
                              Image.network(
                                controller.databuku!.books![index].image!,
                                fit: BoxFit.cover,
                              )
                            ],
                          ),
                        ),
                      );
                    } else {
                      return const Text("nodata");
                    }
                  },
                ),
              ),
            ],
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      }),
    );
  }
}
