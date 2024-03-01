import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:orderit/presentation/components/widgets/custom_button.dart";
import "package:orderit/presentation/screens/onboarding/onboarding_controller/onboarding_controller.dart";
import "package:orderit/presentation/theme/theme/constants/colors.dart";
import "package:orderit/presentation/theme/theme/constants/image_strings.dart";
import 'package:orderit/presentation/screens/onboarding/onboarding_controller/onboarding_text_strings.dart';

class OnboardingScreen1 extends StatefulWidget {
  const OnboardingScreen1({super.key});

  @override
  State<OnboardingScreen1> createState() => _OnboardingScreen1State();
}

class _OnboardingScreen1State extends State<OnboardingScreen1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            const Image(
              fit: BoxFit.fill,
              image: AssetImage(OrderitImages.onBoardingImage1),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                OrderitOnboardingTexts.onBoardingTitle1,
                style: GoogleFonts.manrope(
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                OrderitOnboardingTexts.onBoardingSubtitle1,
                style: GoogleFonts.manrope(
                    fontSize: 18, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
          child: CustomButton(
              color: OrderitColors.greenBackground,
              text: 'Continue',
              textColor: const TextStyle(
                color: OrderitColors.light,
                fontWeight: FontWeight.bold,
              ),
              onPressed: () => OnboardingController.instance.nextPage()),
        ),
      ],
    );
  }
}
