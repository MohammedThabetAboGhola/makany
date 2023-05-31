part of '00_app_color.dart';

class AppStyle {
  AppStyle._();

  static ThemeData lightTheme = ThemeData(
      fontFamily: GoogleFonts.cairo().fontFamily,
      useMaterial3: true,
      splashColor: AppColor.primary.withOpacity(0.2),
      canvasColor: AppColor.primary,
      primaryColor: AppColor.primary,
      highlightColor: AppColor.primary.withOpacity(0.2),
      colorScheme: AppColor.colorScheme,
      scaffoldBackgroundColor: AppColor.background,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColor.background,
        elevation: 0.0,

        /// TODO: Make App color after scrolling
        surfaceTintColor: Colors.transparent,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(backgroundColor: Colors.white));
  static ThemeData darkTheme = ThemeData(
    fontFamily: 'Cairo',
    useMaterial3: true,
    colorScheme: AppColor.colorScheme,
    scaffoldBackgroundColor: AppColor.background,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.background,
      elevation: 0.0,
    ),
  );
}
