import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orderit/presentation/screens/sign_in/sign_in.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

//Update Current Index when Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  void nextPage() {
    int page = currentPageIndex.value + 1;
    pageController.jumpToPage(page);
  }

  void nextPage2() {
    if (currentPageIndex.value == 2) {
      Get.off(() => const SignInScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void backPage() {
    int page = currentPageIndex.value - 1;
    pageController.jumpToPage(page);
  }

//Update Current Index & jump to next page
  void goToSignUpPage() {
    //Get.to(SignUpScreen());
  }
}
