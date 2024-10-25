import "package:e_wallet/shared/theme.dart";
import "package:e_wallet/ui/widgets/buttons.dart";
import "package:e_wallet/ui/widgets/profile_item_menu.dart";
import "package:flutter/material.dart";

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
 
  
    return Scaffold(    
      appBar: AppBar(
        title: Text(
          'My Profile',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 22,
            ),
            decoration: BoxDecoration(
                color: whiteColor, borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/img_profile.png',
                        ),
                      )),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: greenColor,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Shayna Hanna',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),



               ProfileItemMenu(
                iconUrl: 'assets/ic_edit_profile.png', 
                title: 'Edit Profile',
                onTap: () async {
                  if( await Navigator.pushNamed(context, '/pin') == true ){
                      Navigator.pushNamed(context, '/profile-edit');
                  }
                },
                ),


               ProfileItemMenu(
                iconUrl: 'assets/ic_pin.png', 
                title: 'My Pin',
                onTap: (){},
                ),


               ProfileItemMenu(
                iconUrl: 'assets/ic_wallet.png', 
                title: 'Wallet Settings',
                onTap: (){},
                ),


               ProfileItemMenu(
                iconUrl: 'assets/ic_my_rewards.png', 
                title: 'My Rewards',
                onTap: (){},
                ),


               ProfileItemMenu(
                iconUrl: 'assets/ic_help.png', 
                title: 'Help Center',
                onTap: (){},
                ),


               ProfileItemMenu(
                iconUrl: 'assets/ic_logout.png', 
                title: 'Log out',
                onTap: (){},
                ),

              ],
            ),
          ),
          const SizedBox(
            height: 87,
          ),
          CustomTextButton(
            title: 'Report a problem',
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
