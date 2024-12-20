import "package:e_wallet/shared/theme.dart";
import "package:e_wallet/ui/widgets/buttons.dart";
import "package:e_wallet/ui/widgets/forms.dart";
import "package:e_wallet/ui/widgets/transfer_result_user_item.dart";
import "package:e_wallet/ui/widgets/transfer_widget_users_item.dart";
import "package:flutter/material.dart";

class TransferPages extends StatelessWidget {
  const TransferPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transfer'),
      ),

      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            'search',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          CustomFormFilled(
            title: 'by username',
            iShowTitle: false,
          ),
          // buildRecentUsers(),
          buildResult(),

          const SizedBox(
            height: 274,
          ),
          CustomFilledButtom(
            title: 'continue',
            onPressed: (){
              Navigator.pushNamed(context, '/transfer-amount');
            },
            ),

          const SizedBox(
            height: 50,
          )
        ],
      ),

    );
  }


    Widget buildRecentUsers(){
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Users",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),

        const TransaferUserItem(
          imageUrl: 'assets/img_friend1.png', 
          name: 'Yonna Jie', 
          username: 'yoenna', 
          isVerified: true,
        ),



        const TransaferUserItem(
          imageUrl: 'assets/img_friend2.png', 
          name: 'jhon Hi', 
          username: 'jhi', 
          isVerified: true,
        ),



        const TransaferUserItem(
          imageUrl: 'assets/img_friend3.png', 
          name: 'Masayoshi', 
          username: 'form', 
          isVerified: false,
        ),


        ],
      ),
    );
  }


    Widget buildResult(){
      return Container(
        margin: const EdgeInsets.only(
          top: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Result",
              style: blackTextStyle.copyWith(
                fontWeight: semibold,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Wrap(
              spacing: 17,
              runSpacing: 17,
              children: [
                  const TransferResultUserItem(
                  imageUrl: 'assets/img_friend1.png', 
                  name: 'Yonna Jie', 
                  username: 'yoenna', 
                  isVerified: true,
                  isSelected: true,
              ),
              
                  const TransferResultUserItem(
                  imageUrl: 'assets/img_friend2.png', 
                  name: 'Yonna Jie', 
                  username: 'yoenna', 
                  isVerified: true,
              ),
                  const TransferResultUserItem(
                  imageUrl: 'assets/img_friend1.png', 
                  name: 'Yonna Jie', 
                  username: 'yoenna', 
                  isVerified: true,
                  isSelected: true,
              ),
              
                  const TransferResultUserItem(
                  imageUrl: 'assets/img_friend2.png', 
                  name: 'Yonna Jie', 
                  username: 'yoenna', 
                  isVerified: true,
              ),
              ],
            ),
          ],
        ),
      );
    }

}
