import "package:e_wallet/shared/theme.dart";
import "package:e_wallet/ui/widgets/buttons.dart";
import "package:e_wallet/ui/widgets/forms.dart";
import "package:flutter/material.dart";

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Profile',
        ),
      ),
      body: ListView(
        padding: const  EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
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
                    title: 'Username',
                  ),
                  const SizedBox(
                    height: 16,
                  ),
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
        ],
      ),
    );
  }
}