import "package:e_wallet/shared/theme.dart";
import "package:e_wallet/ui/widgets/forms.dart";
import "package:flutter/material.dart";

class TransferPages extends StatelessWidget {
  const TransferPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transfer'),
      ),

      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            'search',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          CustomFormFilled(
            title: 'by username',
            iShowTitle: false,
          ),
        ],
      ),

    );
  }
}
