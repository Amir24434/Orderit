import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:orderit/presentation/screens/onboarding/onboarding_controller/onboarding_controller.dart";
import "package:orderit/presentation/screens/onboarding/onboarding_controller/onboarding_text_strings.dart";
import "package:orderit/presentation/screens/onboarding/widgets/onboarding_dot_navigation.dart";
import "package:orderit/presentation/screens/onboarding/widgets/onboarding_page1.dart";
import "package:orderit/presentation/screens/onboarding/widgets/onboarding_page2.dart";
import "package:orderit/presentation/theme/theme/constants/image_strings.dart";

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children: const [
                OnboardingScreen1(),
                OnboardingScreen2(
                  text: OrderitOnboardingTexts.onBoardingTitle2,
                  image: OrderitImages.onBoardingImage2,
                  subtitle: OrderitOnboardingTexts.onBoardingSubtitle2,
                ),
                OnboardingScreen2(
                  text: OrderitOnboardingTexts.onBoardingTitle3,
                  image: OrderitImages.onBoardingImage3,
                  subtitle: OrderitOnboardingTexts.onBoardingSubtitle3,
                ),
              ],
            ),
            const OnboardingDotNavigation(),
          ],
        ),
      ),
    );
  }
}
