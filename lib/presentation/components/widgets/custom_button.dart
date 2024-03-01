import 'package:flutter/material.dart';
import 'package:orderit/presentation/theme/theme/constants/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.color,
      required this.text,
      required this.textColor,
      required this.onPressed});
  final Color color;
  final String text;
  final TextStyle? textColor;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              color: color,
              border: Border.all(
                color: OrderitColors.greenBackground,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: Center(
              child: Text(
                text,
                style: textColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomButton2 extends StatelessWidget {
  const CustomButton2(
      {super.key,
      required this.color,
      required this.text,
      required this.textColor,
      required this.onPressed});
  final Color color;
  final String text;
  final TextStyle? textColor;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
            height: 40,
            width: 104,
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: Center(
              child: Text(
                text,
                style: textColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomButton3 extends StatelessWidget {
  const CustomButton3(
      {super.key,
      required this.color,
      required this.text,
      required this.textColor,
      required this.onPressed});
  final Color color;
  final String text;
  final TextStyle? textColor;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
            height: 40,
            width: 223,
            decoration: BoxDecoration(
              color: color,
              border: Border.all(
                color: OrderitColors.greenBackground,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: Center(
              child: Text(
                text,
                style: textColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomButton4 extends StatelessWidget {
  const CustomButton4(
      {super.key,
      required this.color,
      required this.text,
      required this.textColor,
      required this.icon,
      required this.onPressed});
  final Color? color;
  final String text;
  final TextStyle? textColor;
  final Function() onPressed;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              color: color,
              border: Border.all(
                width: 1,
                color: OrderitColors.greenBackground,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon,
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    text,
                    style: textColor,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
