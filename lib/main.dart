import 'package:e_wallet/shared/theme.dart';
import 'package:e_wallet/ui/pages/home_pages.dart';
import 'package:e_wallet/ui/pages/onboarding_pages.dart';
import 'package:e_wallet/ui/pages/pin_pages.dart';
import 'package:e_wallet/ui/pages/profile_pages.dart';
import 'package:e_wallet/ui/pages/sign_in_pages.dart';
import 'package:e_wallet/ui/pages/sign_up_pages.dart';
import 'package:e_wallet/ui/pages/sign_up_set_pages.dart';
import 'package:e_wallet/ui/pages/sign_up_success_pages.dart';
import 'package:e_wallet/ui/pages/sign_up_upload_ktp_pages.dart';
import 'package:e_wallet/ui/pages/splash_pages.dart';
import 'package:flutter/material.dart';

void main () => runApp( const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: lightBackgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: lightBackgroundColor,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: blackColor,
          )
        )
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/sign-up-set-profile': (context) => const SignUpSetPage(),
        '/sign-up-upload-ktp': (context) => const SignUpUploadKtpPage(),
        '/sign-up-success': (context) => const SignUpSuccessPage(),
        '/home': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
        '/pin': (context) => const PinPage(),
      },
    );
  }
}