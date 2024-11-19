import 'package:e_wallet/shared/theme.dart';
import 'package:e_wallet/ui/widgets/buttons.dart';
import 'package:e_wallet/ui/widgets/data_item_provider.dart';
import 'package:flutter/material.dart';

class DataProviderPages extends StatelessWidget {
  const DataProviderPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Beli Data',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'From Wallet',
            style: blackTextStyle.copyWith(
              fontWeight: semibold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/img_wallet.png',
                width: 80,
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
                      fontWeight: medium,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Balance: Rp 180.000.000',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height:   40,
          ),
            Text(
            'Select Provider',
            style: blackTextStyle.copyWith(
              fontWeight: semibold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
         const DataItemProvider(
          imageUrl: 'assets/img_provider_telkomsel.png', 
          name: 'Telkomsel',
          isSelected: true,
          ),
         const DataItemProvider(
          imageUrl: 'assets/ic_provider_indosat.png', 
          name: 'Indosat Ooredoo'
          ),
         const DataItemProvider(
          imageUrl: 'assets/ic_provider_singtel.png', 
          name: 'Singtel ID'
          ),
          const SizedBox(
            height: 183,
          ),
          CustomFilledButtom(
            title: 'Continue', 
            onPressed: (){},
          ),
          const SizedBox(
            height: 57,
          )
        ],
      ),
    );
  }
}
