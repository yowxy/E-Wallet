import "package:e_wallet/shared/theme.dart";
import "package:e_wallet/ui/widgets/bank_item.dart";
import "package:e_wallet/ui/widgets/buttons.dart";
import "package:flutter/material.dart";

class TopupPage extends StatelessWidget {
  const TopupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(  
          'Top Up',
          style: blackTextStyle.copyWith(
            fontWeight: semibold,
            fontSize: 20,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Wallet',
            style: blackTextStyle.copyWith(
              fontWeight: semibold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(children: [
            Image.asset(
              'assets/img_wallet.png',
                width: 80,
                height: 55,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              
                Text(
                  '8008 2208 1996',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Angga Rizky ',
                    style: blackTextStyle.copyWith(
                      fontWeight: regular,
                      fontSize: 12,
                    ),
                  )
              ],)
          ],),

          const SizedBox(
            height: 40,
          ),

          Text(
            'Select Bank',
            style: blackTextStyle.copyWith(
              fontWeight: semibold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 14,
          ),


          BankItem(
            imageUrl: 'assets/img_bank_bca.png', 
            title: 'BANK BCA',
            isSelected: true,
          ),


          BankItem(
            imageUrl: 'assets/img_bank_bni.png', 
            title: 'BANK BNI',
            isSelected: false,
          ),



          BankItem(
            imageUrl: 'assets/img_bank_mandiri.png', 
            title: 'BANK Mandiri'
          ),


        
          BankItem(
            imageUrl: 'assets/img_bank_ocbc.png', 
            title: 'BANK OCBC'
          ),

          const SizedBox(
            height: 9,
          ),

          CustomFilledButtom(
            title: 'Continue',
            onPressed: (){},
            ),

            const SizedBox(
              height: 57,
            ),
        ],
      ),
    );
  }
}
