import "package:e_wallet/shared/theme.dart";
import "package:e_wallet/ui/widgets/buttons.dart";
import "package:e_wallet/ui/widgets/forms.dart";
import "package:flutter/material.dart";

class ProfileEditPinPage extends StatelessWidget {
  const ProfileEditPinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit PIN',
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
                    title: 'Old PIN',
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const CustomFormFilled(
                    title: 'New PIN',
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomFilledButtom(
                    title: 'Update Now',
                    onPressed: (){},
                    ),
                ],
            ),
          ),
        ],
      ),
    );
  }
}