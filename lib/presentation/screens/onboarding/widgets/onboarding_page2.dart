import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:orderit/presentation/components/widgets/custom_button.dart";
import "package:orderit/presentation/screens/onboarding/onboarding_controller/onboarding_controller.dart";
import "package:orderit/presentation/theme/theme/constants/colors.dart";

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2(
      {super.key,
      required this.subtitle,
      required this.text,
      required this.image});
  final String image;
  final String text;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Image(
              fit: BoxFit.fill,
              image: AssetImage(image),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                text,
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
                subtitle,
                style: GoogleFonts.manrope(
                    fontSize: 18, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
          child: Center(
            child: Row(
              children: [
                CustomButton2(
                    color: OrderitColors.light,
                    text: 'Back',
                    textColor: const TextStyle(
                      color: OrderitColors.textGreen,
                      fontWeight: FontWeight.bold,
                    ),
                    onPressed: () {
                      OnboardingController.instance.backPage();
                    }),
                const SizedBox(width: 10),
                CustomButton3(
                    color: OrderitColors.greenBackground,
                    text: 'Continue',
                    textColor: const TextStyle(
                      color: OrderitColors.light,
                      fontWeight: FontWeight.bold,
                    ),
                    onPressed: () {
                      OnboardingController.instance.nextPage2();
                    }),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
