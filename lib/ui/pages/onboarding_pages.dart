import "package:carousel_slider/carousel_slider.dart";
import "package:e_wallet/shared/theme.dart";
import "package:flutter/material.dart";

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

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
                enableInfiniteScroll: false,
              ),
            )
          ],
        ),
      ),
    );
  }
}
