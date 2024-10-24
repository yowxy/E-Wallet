import "package:e_wallet/shared/theme.dart";
import "package:e_wallet/ui/widgets/buttons.dart";
import "package:e_wallet/ui/widgets/forms.dart";
import "package:flutter/material.dart";

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
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
            'Join Us to Unlock \nYour Growth',
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
                  title: 'Full Name',
                  ),
                const SizedBox(
                  height: 16,
                ),
                CustomFormFilled(
                  title: 'Email Address',
                  obscureText: false,
                  ),
                const SizedBox(
                  height: 20,
                ),

                CustomFormFilled(
                  title: 'Password',
                  obscureText: true,
                  ),
                
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButtom(
                  title: 'Continue',
                  onPressed: (){
                    Navigator.pushNamed(context, '/sign-up-set-profile');
                  },
                  ),
              ],
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          CustomTextButton(
            title: 'Sign-In',
            onPressed: (){
              Navigator.pushNamed(context, '/sign-in');
            },
            ),
         
        ],
      ),
    );
  }
}