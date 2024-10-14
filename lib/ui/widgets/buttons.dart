import "package:e_wallet/shared/theme.dart";
import "package:flutter/material.dart";

class CustomFilledButtom extends StatelessWidget {

  final String title;
  final double width;
  final double height;
  final VoidCallback  ? onPressed;

  const CustomFilledButtom({
    Key? key,
    required this.title,
      this.width = double.infinity,
      this.height = 50,
      this.onPressed,
    });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextButton(
        onPressed:onPressed,
        style: TextButton.styleFrom(
          backgroundColor: purpleColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(56),
          ),
        ),
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semibold,
          ),
        ),
      ),
    );
  }
}
