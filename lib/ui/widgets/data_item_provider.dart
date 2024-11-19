import "package:e_wallet/shared/theme.dart";
import "package:flutter/material.dart";

class DataItemProvider extends StatelessWidget {

    final String imageUrl;
    final String name;
    final bool isSelected;

  const DataItemProvider({
    required this.imageUrl,
    required this.name,
    this.isSelected =  false,
    super.key
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      margin: const EdgeInsets.only(
        bottom: 18,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
        border: isSelected ? Border.all(
          width: 2,
          color: blueColor,
        ) : null,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
             imageUrl,
            height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  name,
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Available',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                    ),
                  )
              ],
            )
        ],
      ),
    );
  }
}