import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orderit/presentation/components/widgets/custom_button.dart';
import 'package:orderit/presentation/components/widgets/custom_text.dart';
import 'package:orderit/presentation/components/widgets/custom_textfield.dart';
import 'package:orderit/presentation/screens/sign_up/verify_screen.dart';
import 'package:orderit/presentation/theme/theme/constants/colors.dart';
import 'package:orderit/presentation/theme/theme/custom_themes/text_theme.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController emailContoller = TextEditingController();
  bool isClick = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create Account',
                    style: OrderitTextTheme.lightTextTheme.headlineLarge,
                  ),
                  Text(
                    'Fill in your details below to get started on a \nseamless shopping experience',
                    style: OrderitTextTheme.lightTextTheme.titleSmall,
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Form(
                child: Column(
                  children: [
                    const CustomFormField(
                      label: 'First Name',
                      color: OrderitColors.light,
                      prefixIcon: Icon(Icons.person),
                      keyboardType: TextInputType.name,
                      hintText: 'Claire',
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const CustomFormField(
                      label: 'Last Name',
                      color: OrderitColors.light,
                      prefixIcon: Icon(Icons.person),
                      keyboardType: TextInputType.name,
                      hintText: 'Cooper',
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomFormField(
                      controller: emailContoller,
                      label: 'Email',
                      color: OrderitColors.light,
                      prefixIcon: Icon(Icons.email),
                      keyboardType: TextInputType.emailAddress,
                      hintText: 'claire.cooper@mail.com',
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomFormField(
                      isPassword: isClick,
                      label: 'Password',
                      color: OrderitColors.light,
                      prefixIcon: const Icon(Icons.lock),
                      keyboardType: TextInputType.visiblePassword,
                      hintText: '********',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isClick = !isClick;
                          });
                        },
                        icon: isClick
                            ? const Icon(
                                Icons.visibility_off,
                                color: Colors.grey,
                              )
                            : const Icon(
                                Icons.visibility,
                                color: OrderitColors.greenBackground,
                              ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomText(
                          text:
                              'By clicking Create Account, you acknowledge you have ',
                          color: OrderitColors.dark,
                          size: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const CustomText(
                          text: 'read and agreed to our ',
                          color: OrderitColors.dark,
                          size: 11,
                          fontWeight: FontWeight.w400,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const CustomText(
                            text: 'Terms of Use ',
                            fontWeight: FontWeight.bold,
                            size: 11,
                            color: OrderitColors.textGreen,
                          ),
                        ),
                        const CustomText(
                          text: 'and ',
                          color: OrderitColors.dark,
                          size: 11,
                          fontWeight: FontWeight.w400,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const CustomText(
                            text: 'Privacy Policy',
                            fontWeight: FontWeight.bold,
                            size: 11,
                            color: OrderitColors.textGreen,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    CustomButton(
                      color: OrderitColors.greenBackground,
                      text: 'Create Account',
                      onPressed: () {
                        Get.to(
                          VerifyScreen(
                            email: emailContoller.text,
                          ),
                        );
                      },
                      textColor: GoogleFonts.manrope(
                        color: OrderitColors.light,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomText(
                text: 'OR',
                fontWeight: FontWeight.bold,
                size: 12,
                color: OrderitColors.textGreen,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomButton4(
                icon: const Icon(Icons.flutter_dash),
                color: Colors.grey[200],
                text: 'Continue with Google',
                onPressed: () {},
                textColor: GoogleFonts.manrope(
                    color: OrderitColors.textGreen,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 16,
              ),
              CustomButton4(
                icon: const Icon(Icons.facebook),
                color: Colors.grey[200],
                text: 'Continue with Facebook',
                onPressed: () {},
                textColor: GoogleFonts.manrope(
                    color: OrderitColors.textGreen,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
