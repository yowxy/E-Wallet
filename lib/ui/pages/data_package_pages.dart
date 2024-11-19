import "package:e_wallet/shared/theme.dart";
import "package:e_wallet/ui/widgets/buttons.dart";
import "package:e_wallet/ui/widgets/forms.dart";
import "package:e_wallet/ui/widgets/package_item.dart";
import "package:e_wallet/ui/widgets/transfer_result_user_item.dart";
import "package:flutter/material.dart";

class DataPackagePages extends StatelessWidget {
  const DataPackagePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paket Data'),
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
            'Phone Number',
            style: blackTextStyle.copyWith(
              fontWeight: semibold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          CustomFormFilled(
            title: '+628',
            iShowTitle: false,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Select Package',
            style: blackTextStyle.copyWith(
              fontWeight: semibold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Wrap(
            spacing: 17,
            runSpacing: 17,
            children: [
              PackageItem(
                amount: 10,
                price: 100000,
                isSelected: true,
              ),
              PackageItem(
                amount: 25,
                price: 100000,
              ),
              PackageItem(
                amount: 40,
                price: 100000,
              ),
              PackageItem(
                amount: 99,
                price: 100000,
              ),
            ],
          ),
          const SizedBox(
            height: 85,
          ),
          CustomFilledButtom(
            title: 'Continue',
            onPressed: () async{
              if(await Navigator.pushNamed(context, '/pin') == true){
                Navigator.pushNamedAndRemoveUntil(context, '/data-success', (route)=>false ); 
              }
            },
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
