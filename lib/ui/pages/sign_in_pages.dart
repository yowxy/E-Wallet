import "package:e_wallet/shared/theme.dart";
import "package:e_wallet/ui/widgets/buttons.dart";
import "package:e_wallet/ui/widgets/forms.dart";
import "package:flutter/material.dart";

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.only(
              top: 100,
              bottom: 100,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/img_logo_light.png',
                ),
              ),
            ),
          ),
          Text(
            'Sign In & \nGrow Your Finance',
            style: blackTextStyle.copyWith(
              fontWeight: semibold,
              fontSize: 21,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomFormFilled(
                  title: 'Email Addres',
                  ),
                const SizedBox(
                  height: 16,
                ),
                CustomFormFilled(
                  title: 'Password',
                  obscureText: true,
                  ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password',
                    style: blueTextStyle.copyWith(
                      fontSize: 14,
                      // fontWeight: semibold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButtom(
                  title: 'Sign-in',
                  onPressed: (){},
                  ),
              ],
            ),
          ),

          const SizedBox(
            height: 50,
          ),

          CustomTextButton(
            title: 'Create New Account',
            onPressed: (){},
            ),
         
        ],
      ),
    );
  }
}
