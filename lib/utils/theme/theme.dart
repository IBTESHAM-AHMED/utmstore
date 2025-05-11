import 'package:flutter/material.dart';
import 'package:utmstore/utils/theme/custom_themes/appbar_theme.dart';
import 'package:utmstore/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:utmstore/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:utmstore/utils/theme/custom_themes/chip_theme.dart';
import 'package:utmstore/utils/theme/custom_themes/elevated_button_theme.dart' show TElevatedButtonTheme;
import 'package:utmstore/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:utmstore/utils/theme/custom_themes/text_field_theme.dart';
import 'package:utmstore/utils/theme/custom_themes/text_theme.dart' show TTextTheme;

class UtmApptheme {
  UtmApptheme._();

  static ThemeData lightTheme= ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins' ,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme= ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins' ,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );


}