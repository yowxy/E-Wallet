import 'package:e_wallet/shared/theme.dart';
import 'package:flutter/material.dart';

class BankItem extends StatelessWidget {
  

  final String imageUrl;
  final String title;
  final bool isSelected;

  const BankItem({
    
    required this.imageUrl,
    required this.title,
    this.isSelected = false,
    
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 18,
      ),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
        border: Border.all(
          width: 2,
          color: isSelected ? blueColor : whiteColor,
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imageUrl,
            width: 96,
            height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  title,
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  '50 mins',
                  style: greyTextStyle.copyWith(
                    fontWeight: regular,
                    fontSize: 16,
                  ),
                )
              ],
            )
        ],
      ),
    );
  }
}