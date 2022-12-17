import 'package:bank_front/shared/theme.dart';
import 'package:bank_front/ui/pages/sign_in_page.dart';
import 'package:bank_front/ui/widgets/buttons.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  //variable untuk menampikan halaman pertama
  CarouselController carouselController = CarouselController();
  //carouselcontrlloer adalah bawaan variable controller dari carousel
  List<String> titles = [
    'Grow Your\nFinancial Today',
    'Build From\nZero to Freedom',
    'Start Together',
  ];
  List<String> subtitles = [
    'Our system is helping you to\nachieve a better goal',
    'We provide tips for you so that\nyou can adapt easier',
    'We will guide you to where\nyou wanted it too',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //buat gambar atau coulum ke tengah
          children: [
            CarouselSlider(
              items: [
                Image.asset(
                  'assets/img_onboarding1.png',
                  height: 331,
                ),
                Image.asset(
                  'assets/img_onboarding2.png',
                  height: 331,
                ),
                Image.asset(
                  'assets/img_onboarding3.png',
                  height: 331,
                ),
              ],
              options: CarouselOptions(
                height: 331,
                viewportFraction: 1,
                //view port untuk menampikan hanya 1 bagian saja yang tampil
                enableInfiniteScroll: false,
                //enableinfinite membuat slider tidak infiniy slide, jadi ada batasanya
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                  //adalah ketika pindah slide index akan bertambah dari awalan 0, awalan 0 sudah di deklarasi di atas
                },
              ),
              carouselController: carouselController,
            ),
            const SizedBox(
              height: 80,
              //size box height yaitu jarak dari image ke sizebox
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 24,
                //ini adalah margin atau jarak dari container sisi sisi sebelah kiri dan kanan
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 22,
                vertical: 24,
                // padding ini adalah jarak dari sizbox ke luar atau margin
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(20),
                //decoration adalah layer putih yang akan di isi content text
              ),
              child: Column(
                children: [
                  Text(
                    titles[currentIndex],
                    //titles akan mengikuti current index yang di tekan
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Text(
                    subtitles[currentIndex],
                    //subtitle s akan mengikuti current index yang di tekan
                    style: grayTextStyle.copyWith(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: currentIndex == 2 ? 38 : 50,
                  ),
                  currentIndex == 2
                      ? Column(
                          //jika current index sama dengan 2 maka akan menampikan ini, jika engga akan menampikann row yang di bawah
                          children: [
                            CustomFilledButton(
                              title: 'Get Started',
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(
                                    context, '/sign-up', (route) => false);
                              },
                            ),
                            const SizedBox(
                              height: 20,
                              //sidebox agar ada jarak 20 dari get started ke sign
                            ),
                            CustomTextButton(
                              title: 'Sign In',
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(
                                    context, '/sign-in', (route) => false);
                              },
                            ),
                          ],
                        )
                      : Row(
                          children: [
                            Container(
                              width: 12,
                              height: 12,
                              margin: const EdgeInsets.only(
                                right: 10,
                                //margin untuk bulatan dari
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentIndex == 0
                                    ? blueColor
                                    : lightBackgroundColor,
                                //jika current index atau nomer cousel nya 0 akan menampiklan bluecolor, jika engga akan light
                              ),
                            ),
                            Container(
                              width: 12,
                              height: 12,
                              margin: const EdgeInsets.only(
                                right: 10,
                                //margin untuk bulatan dari
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentIndex == 1
                                    ? blueColor
                                    : lightBackgroundColor,
                                //jika current index atau nomer cousel nya 0 akan menampiklan bluecolor, jika engga akan light
                              ),
                            ),
                            Container(
                              width: 12,
                              height: 12,
                              margin: const EdgeInsets.only(
                                right: 10,
                                //margin untuk bulatan dari
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentIndex == 2
                                    ? blueColor
                                    : lightBackgroundColor,
                                //jika current index atau nomer cousel nya 0 akan menampiklan bluecolor, jika engga akan light
                              ),
                            ),
                            const Spacer(),
                            CustomFilledButton(
                              width: 150,
                              title: 'Continue',
                              onPressed: () {
                                carouselController.nextPage();
                              },
                            ),
                            //spacer adalah untuk menngisi ruangan tersisa, di row ini bulatan udah ada di kiri otomatis button nya pasti  di kiri
                          ],
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
