import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SplashScreenController extends GetxController {
  //TODO: Implement SplashScreenController

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration (seconds: 10), () {
      Get.offAllNamed(Routes.HOME);
    });

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
}