import 'package:e_wallet/shared/theme.dart';
import 'package:flutter/material.dart';


class HomeUserItem extends StatelessWidget {

  final String imageUrl;
  final String username;

  const HomeUserItem({

    required this.imageUrl,
    required this.username,
    super.key
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 17,
      ),
      width: 90,
      height: 120,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 45,
            height: 45,
            margin: const EdgeInsets.only(
              bottom: 13
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                imageUrl,
              ))
            ),
          ),
          Text(
            '@$username',
            style: blackTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}