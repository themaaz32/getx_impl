import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_impl/pages/detail/view/detail.dart';
import 'package:getx_impl/pages/home/controller/home_controller.dart';
import 'package:getx_impl/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "${homeController.count}",
                style: TextStyle(fontSize: 24),
              ),
            ),
            FlatButton(
              onPressed: () {
                // Get.toNamed("/detail");
                // print(apiService.fetchTextFromApi());
                homeController.increment();
              },
              child: Text("Increment"),
              color: Colors.black,
              textColor: Colors.white,
            ),
            FlatButton(
              onPressed: () {
                // Get.defaultDialog(title: "This is dialog");
                Get.snackbar("Title", "This is getx snackbar", snackPosition: SnackPosition.BOTTOM);
                // Get.toNamed("/detail");
              },
              child: Text("Go to detail"),
              color: Colors.red,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
