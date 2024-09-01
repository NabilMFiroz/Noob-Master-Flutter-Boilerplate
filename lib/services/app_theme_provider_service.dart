import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nmf_custom_template/utils/app_colors.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) async {
    ///Dynamic
    // final SharedPreferences pref = await SharedPreferences.getInstance();
    // await pref.setString('theme', isOn ? 'true' : 'false');
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  initial() async {
    ///Dunamic
    // final SharedPreferences pref = await SharedPreferences.getInstance();
    // themeMode =
    //     pref.getString('theme') == 'true' ? ThemeMode.dark : ThemeMode.light;
    themeMode = ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  /// Dark Theme
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.alien,
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: AppColors.ivory),
      bodyLarge: TextStyle(color: AppColors.coldSteel),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: AppColors.ivory, // foreground (text) color
      ),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color>(
        (states) {
          if (states.contains(MaterialState.selected)) {
            return AppColors.grassGreen; // Selected color
          }
          return AppColors.grassGreen; // Deselected color
        },
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      side: BorderSide(color: AppColors.grassGreen, width: 2),
    ),
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: AppColors.coldSteel),
      color: AppColors.grassGreen,
      foregroundColor: AppColors.coldSteel,
      centerTitle: true,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: AppColors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
    ),
    cardTheme: CardTheme(
      color: AppColors.obsidian,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
    ),
    iconTheme: IconThemeData(
      color: AppColors.coldSteel,
    ),
    colorScheme: ColorScheme.dark(
      primary: AppColors.grassGreen,
      secondary: AppColors.pastelGreen,
      tertiary: AppColors.seaGreen,
      error: AppColors.cherryRed,
    ).copyWith(background: AppColors.alien),
    bottomAppBarTheme: BottomAppBarTheme(
      color: AppColors.charcoal,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.deep,
    ),
  );

  /// Light Theme
  static final lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.marble,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: AppColors.black),
      bodyLarge: TextStyle(color: AppColors.black),
    ),
    iconTheme: IconThemeData(color: AppColors.obsidian),
    primaryColor: AppColors.seaGreen,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: AppColors.obsidian),
      color: AppColors.seaGreen,
      centerTitle: true,
      foregroundColor: AppColors.black,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: AppColors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: AppColors.seaGreen,
      secondary: AppColors.darkTeal,
      tertiary: AppColors.tealBlue,
      error: AppColors.cherryRed,
    ).copyWith(background: AppColors.marble),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: AppColors.aliceBlue, // foreground (text) color
      ),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color>(
        (states) {
          if (states.contains(MaterialState.selected)) {
            return AppColors.seaGreen; // Selected color
          }
          return AppColors.seaGreen; // Deselected color
        },
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      side: BorderSide(color: AppColors.seaGreen, width: 2),
    ),
    cardTheme: CardTheme(
      color: AppColors.aliceBlue,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      color: AppColors.ivory,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.pearl,
    ),
  );
}
