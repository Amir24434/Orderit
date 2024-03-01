import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orderit/presentation/components/widgets/custom_button.dart';
import 'package:orderit/presentation/components/widgets/custom_text.dart';
import 'package:orderit/presentation/components/widgets/custom_textfield.dart';
import 'package:orderit/presentation/screens/home/bottom_nav/bottom_nav_screen.dart';
import 'package:orderit/presentation/screens/sign_in/forget_password.dart';
import 'package:orderit/presentation/screens/sign_up/sign_up.dart';
import 'package:orderit/presentation/theme/theme/constants/colors.dart';
import 'package:orderit/presentation/theme/theme/custom_themes/text_theme.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
                    'Welcome back!',
                    style: OrderitTextTheme.lightTextTheme.headlineLarge,
                  ),
                  Text(
                    'Enter your email to start shopping and get \nawesome deals today!',
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
                      label: 'Email',
                      color: OrderitColors.light,
                      prefixIcon: Icon(Icons.email),
                      keyboardType: TextInputType.emailAddress,
                      hintText: 'refqi.naofal@mail.com',
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
                    GestureDetector(
                      onTap: () {
                        Get.to(
                          const ForgetPasswordScreen(),
                        );
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomText(
                            text: 'Forgot your password?',
                            fontWeight: FontWeight.bold,
                            size: 12,
                            color: OrderitColors.textGreen,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    CustomButton(
                      color: OrderitColors.greenBackground,
                      text: 'Log In',
                      onPressed: () {
                        Get.to(() => const BottomNavBar());
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
                color: OrderitColors.light,
                text: 'Log In with Google',
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
                color: OrderitColors.light,
                text: 'Log In with Facebook',
                onPressed: () {},
                textColor: GoogleFonts.manrope(
                    color: OrderitColors.textGreen,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  const SizedBox(width: 2),
                  GestureDetector(
                    onTap: () {
                      Get.off(const SignUpScreen());
                    },
                    child: const CustomText(
                      text: 'Register',
                      fontWeight: FontWeight.bold,
                      size: 12,
                      color: OrderitColors.textGreen,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
