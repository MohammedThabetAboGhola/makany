import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:makany/prefs/shared_pref_controller.dart';
import 'package:makany/provider/00_language_provider.dart';
import 'package:makany/provider/01_layout_provider.dart';
import 'package:makany/provider/02_filter_provider.dart';
import 'package:makany/provider/03_my_real_estate_provider.dart';
import 'package:makany/screens/00_core/00_lunch_screen.dart';
import 'package:makany/screens/00_core/01_layout_screen.dart';
import 'package:makany/screens/01_home_page/00_home_screen.dart';
import 'package:makany/screens/02_login_screens/Sign_up.dart';
import 'package:makany/screens/02_login_screens/forget_password.dart';
import 'package:makany/screens/02_login_screens/login_screen.dart';
import 'package:makany/screens/02_my_real_estate/00_real_estate_layout.dart';
import 'package:makany/utils/00_style/00_app_color.dart';
import 'package:provider/provider.dart';
import 'generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefController().initPreferences();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (BuildContext context) => LanguageProvider()),
            ChangeNotifierProvider(create: (BuildContext context) => LayoutProvider()),
            ChangeNotifierProvider(create: (BuildContext context) => FilterProvider()),
            ChangeNotifierProvider(create: (BuildContext context) => MyRealEstateProvider()),
          ],
          builder: (context, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: AppStyle.lightTheme,
              darkTheme: AppStyle.darkTheme,
              themeMode: ThemeMode.light,
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              // locale: Locale(Provider.of<LanguageProvider>(context).language),
              locale: const Locale('ar'),
              initialRoute: "/lunch_screen",
              routes: {
                "/lunch_screen": (context) => const LunchScreen(),
                "/layout_screen": (context) => const LayoutScreen(),
                "/home_screen": (context) => const HomeScreen(),
                "/filter_edit_screen": (context) => const FilterEditScreen(),
                "/details_screen": (context) => const DetailsScreen(),
                "/real_estate_screen": (context) => const RealEstateLayout(),
                "/login_screen" :(context) => const LoginScreen(),
                "/forget_password" :(context) => const ForgotPasswordScreen(),
                "/sign_up" :(context) => const SignUpScreen(),
              },
            );
          },
        );
      },
    );
  }
}
