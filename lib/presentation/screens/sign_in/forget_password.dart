import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orderit/presentation/components/widgets/custom_button.dart';
import 'package:orderit/presentation/components/widgets/custom_textfield.dart';
import 'package:orderit/presentation/theme/theme/constants/colors.dart';
import 'package:orderit/presentation/theme/theme/custom_themes/text_theme.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  bool isClick = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: OrderitColors.light,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    color: Colors.grey[300],
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: OrderitColors.dark,
                      size: 15,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Forgot Password',
                    style: OrderitTextTheme.lightTextTheme.headlineLarge,
                  ),
                  Text(
                    'Enter Your Email Account To Reset',
                    style: OrderitTextTheme.lightTextTheme.titleSmall,
                  ),
                  Text(
                    'Your Password',
                    style: OrderitTextTheme.lightTextTheme.titleSmall,
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              const CustomFormField(
                label: 'Email',
                color: OrderitColors.light,
                prefixIcon: Icon(Icons.email),
                keyboardType: TextInputType.emailAddress,
                hintText: 'xxxxxxxxxx',
              ),
              const SizedBox(
                height: 32,
              ),
              CustomButton(
                color: OrderitColors.greenBackground,
                text: 'Reset Password',
                onPressed: () {
                  showDialog(
                    barrierColor: Colors.grey.shade200.withOpacity(0.6),
                    context: context,
                    builder: (context) {
                      return const AlertDialog(
                        title: Text(
                          "Check your Email",
                          textAlign: TextAlign.center,
                        ),
                        content: Text(
                          "We have sent a Password Recovery Code in your Email",
                          textAlign: TextAlign.center,
                        ),
                      );
                    },
                  );
                },
                textColor: GoogleFonts.manrope(
                  color: Colors.grey[300],
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
