import 'package:bank_front/shared/theme.dart';
import 'package:bank_front/ui/pages/home_page.dart';
import 'package:bank_front/ui/pages/onboarding_page.dart';
import 'package:bank_front/ui/pages/profile_page.dart';
import 'package:bank_front/ui/pages/sign_in_page.dart';
import 'package:bank_front/ui/pages/sign_up_page.dart';
import 'package:bank_front/ui/pages/sign_up_set_ktp_page.dart';
import 'package:bank_front/ui/pages/sign_up_set_profile_page.dart';
import 'package:bank_front/ui/pages/sign_up_success_page.dart';
import 'package:flutter/material.dart';
import 'package:bank_front/ui/pages/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: lightBackgroundColor,
        appBarTheme: AppBarTheme(
          //app bar untuk membuat header tulisan di atas beserta tombol kembalinya
          backgroundColor:
              lightBackgroundColor, //bg color karena default nya biru jadi harus di ganti jadi putih
          elevation: 0, //agar tidak ada bayangan di set 0
          centerTitle:
              true, //default nya di kiri, jadi di tengah menggunakan sintax ini
          iconTheme: IconThemeData(
            color: blackColor,
          ),
          titleTextStyle: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
      ),
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/sign-up-set-profile': (context) => const SignUpSetProfile(),
        '/sign-up-set-ktp': (context) => const SignUpSetKtp(),
        '/sign-up-success': (context) => const SignUpSuccessPage(),
        '/home': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}
