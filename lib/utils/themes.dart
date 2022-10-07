import 'package:djal_auto/utils/constans.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

ThemeData kDarkTheme() => ThemeData(
      // useMaterial3: true,

      splashFactory: InkSparkle.splashFactory,

      scaffoldBackgroundColor: kBackgroundColor,

      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: kPrimaryColor,
        onPrimary: kOnPrimaryColor,
        secondary: kPrimaryColor,
        onSecondary: kOnPrimaryColor,
        error: kErrorColor,
        onError: kOnPrimaryColor,
        background: kBackgroundColor,
        onBackground: kOnPrimaryColor,
        surface: kSurfaceColor,
        onSurface: kOnPrimaryColor,
      ),

      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: kSurfaceColor,
        indicatorColor: kPrimaryColor,
        elevation: 2,
        labelTextStyle: MaterialStateProperty.resolveWith(
          (states) {
            return GoogleFonts.montserrat(fontWeight: FontWeight.bold);
          },
        ),
      ),

      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: kBackgroundColor,
        titleTextStyle: kAppBarTS,
      ),

      floatingActionButtonTheme:
          FloatingActionButtonThemeData(extendedTextStyle: kAppBarTS),

      fontFamily: 'Montserrat',

      dialogTheme: DialogTheme(
        backgroundColor: kSurfaceColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            splashFactory: InkSparkle.splashFactory,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            textStyle: kAppBarTS),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          textStyle: kAppBarTS,
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          textStyle: kAppBarTS,
        ),
      ),

      popupMenuTheme: PopupMenuThemeData(
        color: kSurfaceColor,
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        textStyle: kAppBarTS,
      ),

      inputDecorationTheme: const InputDecorationTheme(
        border: InputBorder.none,
      ),

      toggleButtonsTheme: ToggleButtonsThemeData(
        borderWidth: 3,
        borderRadius: BorderRadius.circular(16),
        borderColor: kSurfaceColor,
        selectedBorderColor: kPrimaryColor,
        selectedColor: kPrimaryColor,
      ),
    );

final defaultPinTheme = PinTheme(
  width: 64,
  height: 64,
  textStyle: const TextStyle(color: kPrimaryColor, fontSize: 14),
  decoration: BoxDecoration(
    border: Border.all(color: kSurfaceColor, width: 3),
    borderRadius: BorderRadius.circular(16),
  ),
);

final focusedPinTheme = defaultPinTheme.copyDecorationWith(
  border: Border.all(color: kPrimaryColor, width: 3),
  borderRadius: BorderRadius.circular(16),
);

final submittedPinTheme = defaultPinTheme.copyWith(
  decoration: defaultPinTheme.decoration?.copyWith(
    color: kSurfaceColor,
  ),
);
