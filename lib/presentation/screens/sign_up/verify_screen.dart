import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:orderit/presentation/components/widgets/custom_button.dart';
import 'package:orderit/presentation/components/widgets/custom_text.dart';
import 'package:orderit/presentation/screens/sign_up/verify_successful_screen.dart';
import 'package:orderit/presentation/theme/theme/constants/colors.dart';

class VerifyScreen extends StatelessWidget {
  final String email;

  const VerifyScreen({
    super.key,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: "Verify your account",
                fontWeight: FontWeight.bold,
                size: 25,
                color: OrderitColors.textGreen,
              ),
              const SizedBox(height: 30),
              Flexible(
                child: Row(
                  children: [
                    const CustomText(
                      text: "Enter the 4-digit code we've sent to ",
                      fontWeight: FontWeight.normal,
                      size: 12,
                      color: OrderitColors.textGreen,
                    ),
                    CustomText(
                      text: email,
                      fontWeight: FontWeight.bold,
                      size: 12,
                      color: OrderitColors.textGreen,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              OtpTextField(
                numberOfFields: 4,
                fieldWidth: 60,
                borderColor: const Color(0xff002555),
                borderWidth: 2,
                borderRadius: BorderRadius.circular(15),
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    },
                  );
                }, // end onSubmit
              ),
              const SizedBox(height: 30),
              const SizedBox(height: 40),
              CustomButton(
                color: OrderitColors.greenBackground,
                textColor: const TextStyle(color: OrderitColors.light),
                text: 'Verify',
                onPressed: () {
                  Get.off(
                    const VerifySuccessfulScreen(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
