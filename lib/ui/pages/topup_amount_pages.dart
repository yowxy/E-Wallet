import "package:e_wallet/shared/theme.dart";
import "package:e_wallet/ui/widgets/buttons.dart";
import "package:flutter/material.dart";

class TopUpAmountPage extends StatefulWidget {
  const TopUpAmountPage({super.key});

  @override
  State<TopUpAmountPage> createState() => _TopupAmountPageState();
}

class _TopupAmountPageState extends State<TopUpAmountPage> {
  final TextEditingController amountController = TextEditingController(text: '');

  void addAmount(String number) {
    setState(() {
      amountController.text = amountController.text + number;
    });
  }

  void deleteAmount() {
    if (amountController.text.isNotEmpty) {
      setState(() {
        amountController.text = amountController.text.substring(0, amountController.text.length - 1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 58),
        children: [
          const SizedBox(height: 36),
          Center(
            child: Text(
              'Total Amount',
              style: whiteTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semibold,
              ),
            ),
          ),
          const SizedBox(height: 67),
          SizedBox(
            width: 200,
            child: TextFormField(
              controller: amountController,
              enabled: false,
              cursorColor: greyColor,
              style: whiteTextStyle.copyWith(
                fontSize: 36,
                fontWeight: medium,
              ),
              decoration: InputDecoration(
                prefix: Text(
                  'Rp',
                  style: whiteTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 36,
                  ),
                ),
                disabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: greyColor),
                ),
              ),
            ),
          ),
          const SizedBox(height: 66),
          Wrap(
            spacing: 40,
            runSpacing: 40,
            children: [
              for (var i = 1; i <= 9; i++)
                CustomInputButton(
                  title: '$i',
                  onTap: () {
                    addAmount('$i');
                  },
                ),
              const SizedBox(height: 60, width: 60),
              CustomInputButton(
                title: '0',
                onTap: () {
                  addAmount('0');
                },
              ),
              GestureDetector(
                onTap: deleteAmount,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: numberBackgroundColor,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back,
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
