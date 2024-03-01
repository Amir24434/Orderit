import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orderit/presentation/theme/theme/custom_themes/appbar_theme.dart';
import 'package:orderit/presentation/theme/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:orderit/presentation/theme/theme/custom_themes/checkbox_theme.dart';
import 'package:orderit/presentation/theme/theme/custom_themes/chip_theme.dart';
import 'package:orderit/presentation/theme/theme/custom_themes/elevated_buton_themes.dart';
import 'package:orderit/presentation/theme/theme/custom_themes/outlined_button_theme.dart';
import 'package:orderit/presentation/theme/theme/custom_themes/text_form_field_theme.dart';
import 'package:orderit/presentation/theme/theme/custom_themes/text_theme.dart';

class OrderitAppTheme {
  OrderitAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().toString(),
    brightness: Brightness.light,
    primaryColor: const Color.fromARGB(255, 53, 116, 92),
    scaffoldBackgroundColor: Colors.white,
    textTheme: OrderitTextTheme.lightTextTheme,
    chipTheme: OrderitChipTheme.lightChipThemeData,
    appBarTheme: OrderitAppBarTheme.lightAppBarTheme,
    checkboxTheme: OrderitCheckBoxTheme.lightCheckBoxThemeData,
    bottomSheetTheme: OrderitBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: OrderitElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: OrderitOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: OrderitTextFormField.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().toString(),
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: OrderitTextTheme.darkTextTheme,
    chipTheme: OrderitChipTheme.darkChipThemeData,
    appBarTheme: OrderitAppBarTheme.darkAppBarTheme,
    checkboxTheme: OrderitCheckBoxTheme.darkCheckBoxThemeData,
    bottomSheetTheme: OrderitBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: OrderitElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: OrderitOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: OrderitTextFormField.darkInputDecorationTheme,
  );
}
