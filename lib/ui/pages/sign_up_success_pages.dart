import "package:e_wallet/shared/theme.dart";
import "package:e_wallet/ui/widgets/buttons.dart";
import "package:flutter/material.dart";

class SignUpSuccessPage extends StatelessWidget {
  const SignUpSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Akun Berhasil \nTerdaftar',
            style: blackTextStyle.copyWith(
              fontWeight: semibold,
              fontSize: 20,
            ),
            textAlign:TextAlign.center  ,
            ),
          const SizedBox(
            height: 26,
          ),
          Text(
            'Grow your finance start \ntogether with us',
            style: greyTextStyle.copyWith(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomFilledButtom(
            width: 183,
            title: 'Get Started',
            onPressed: (){
              Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
            },
            ),
        ],
      ) ,),
    );
  }
}