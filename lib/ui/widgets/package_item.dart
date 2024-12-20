import 'package:e_wallet/shared/shared_methods.dart';
import 'package:e_wallet/shared/theme.dart';
import 'package:flutter/material.dart';

class PackageItem extends StatelessWidget {

    final int amount;
    final int price;
    final bool isSelected;

  const PackageItem({
    required this.amount,
    required this.price,
    this.isSelected = false,
    super.key
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 173,
  
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 22,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isSelected ? blueColor : whiteColor,
          width: 2,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           
             const  SizedBox(
              height: 14,
             ),
            Text(
              '${amount}GB',
              style: blackTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 32,
              ),
            ),
            const  SizedBox(
              height: 2,
            ),
            Text(
              formatCurrency(price),
              style: greyTextStyle.copyWith(
                fontSize: 12,
                fontWeight: regular,
              ),
            )
        ],
      ),
    );
  }
}