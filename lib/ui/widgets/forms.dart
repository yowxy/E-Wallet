import "package:e_wallet/shared/theme.dart";
import "package:flutter/material.dart";

class CustomFormFilled extends StatelessWidget {


  final String title;
  final bool obscureText;
  final TextEditingController? controller;
  final bool iShowTitle ;



  const CustomFormFilled({
    required this.title,
    this.obscureText = false,
    this.controller,
    this.iShowTitle = true,
    super.key

    });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(iShowTitle)
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontWeight: medium,
          ),
        ),
        if(iShowTitle)const SizedBox(
          height: 8,
        ),
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: !iShowTitle ? title : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            contentPadding: const EdgeInsets.all(12),
          ),
        ),
      ],
    );
  }



}
