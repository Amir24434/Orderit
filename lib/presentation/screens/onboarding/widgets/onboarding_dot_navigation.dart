import 'package:flutter/material.dart';
import 'package:orderit/presentation/screens/onboarding/onboarding_controller/onboarding_controller.dart';
import 'package:orderit/presentation/theme/theme/constants/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingDotNavigation extends StatefulWidget {
  const OnboardingDotNavigation({super.key});

  @override
  State<OnboardingDotNavigation> createState() =>
      _OnboardingDotNavigationState();
}

class _OnboardingDotNavigationState extends State<OnboardingDotNavigation> {
  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Positioned.fill(
      bottom: kBottomNavigationBarHeight - 600,
      child: Align(
        alignment: Alignment.center,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          count: 3,
          effect: const SlideEffect(
            activeDotColor: OrderitColors.greenBackground,
            dotHeight: 8,
            dotWidth: 8,
          ),
        ),
      ),
    );
  }
}
