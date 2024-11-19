import 'package:e_wallet/shared/theme.dart';
import 'package:e_wallet/ui/pages/data_package_pages.dart';
import 'package:e_wallet/ui/pages/data_provider_pages.dart';
import 'package:e_wallet/ui/pages/data_success_pages.dart';
import 'package:e_wallet/ui/pages/home_pages.dart';
import 'package:e_wallet/ui/pages/onboarding_pages.dart';
import 'package:e_wallet/ui/pages/pin_pages.dart';
import 'package:e_wallet/ui/pages/profile_edit_pages.dart';
import 'package:e_wallet/ui/pages/profile_edit_pin_pages.dart';
import 'package:e_wallet/ui/pages/profile_edit_success_pages.dart';
import 'package:e_wallet/ui/pages/profile_pages.dart';
import 'package:e_wallet/ui/pages/sign_in_pages.dart';
import 'package:e_wallet/ui/pages/sign_up_pages.dart';
import 'package:e_wallet/ui/pages/sign_up_set_pages.dart';
import 'package:e_wallet/ui/pages/sign_up_success_pages.dart';
import 'package:e_wallet/ui/pages/sign_up_upload_ktp_pages.dart';
import 'package:e_wallet/ui/pages/splash_pages.dart';
import 'package:e_wallet/ui/pages/topup_amount_pages.dart';
import 'package:e_wallet/ui/pages/topup_pages.dart';
import 'package:e_wallet/ui/pages/topup_success.dart';
import 'package:e_wallet/ui/pages/transfer_amount_pages.dart';
import 'package:e_wallet/ui/pages/transfer_pages.dart';
import 'package:e_wallet/ui/pages/transfer_success_pages.dart';
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
        '/profile-edit': (context) => const ProfileEditPage(),
        '/profile-edit-pin': (context) => const ProfileEditPinPage(),
        '/profile-edit-success': (context) => const ProfileEditSuccessPage(),
        '/topup': (context) => const TopupPage(),
        '/topup-amount': (context) =>const TopUpAmountPage(),
        '/topup-success' : (context) => const TopupSuccessPage(),
        '/transfer' : (context) =>  const TransferPages(),
        '/transfer-amount': (context) => const TransferAmountPage(),
        '/transfer-success': (context) => const TransferSuccessPage(),
        '/data-provider': (context) => const DataProviderPages(),
        '/data-package': (context) => const DataPackagePages(),
        '/data-success': (context) => const DataSuccessPages(),
      },
    );
  }
}