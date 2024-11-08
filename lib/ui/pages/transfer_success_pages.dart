import "package:e_wallet/shared/theme.dart";
import "package:e_wallet/ui/widgets/buttons.dart";
import "package:flutter/material.dart";

class TransferSuccessPage extends StatelessWidget {
  const TransferSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Berhasil Transfer',
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
            'use the money wisely and \n grow your finance',
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
            title: 'Back To Home',
            onPressed: (){
              Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
            },
            ),
        ],
      ) ,),
    );
  }
}