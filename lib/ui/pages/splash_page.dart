import 'dart:async';

import 'package:bank_front/shared/theme.dart';
import 'package:bank_front/ui/pages/onboarding_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  //inistate adalah function yang akan pertama kali di panggil di splash page
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(const Duration(seconds: 2), () {
      //timer ini adalah saat page splash pertama di buka akan menunggu 2 detik untuk ke page onboardingpage
      Navigator.pushNamedAndRemoveUntil(
          context, '/onboarding', (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Center(
          child: Container(
        width: 155,
        height: 50,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/img_logo_light.png',
            ),
          ),
        ),
      )),
    );
  }
}
