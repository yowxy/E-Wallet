import "package:e_wallet/shared/theme.dart";
import "package:e_wallet/ui/widgets/home_service_item.dart";
import "package:e_wallet/ui/widgets/home_tips_item.dart";
import "package:e_wallet/ui/widgets/home_transactions_item.dart";
import "package:e_wallet/ui/widgets/home_user_item.dart";
import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: whiteColor,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: whiteColor,
            elevation: 0,
            selectedItemColor: blueColor,
            unselectedItemColor: blackColor,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedLabelStyle: blueTextStyle.copyWith(
              fontSize: 10,
              fontWeight: medium,
            ),
            unselectedLabelStyle: blackTextStyle.copyWith(
              fontSize: 10,
              fontWeight: medium,
            ),
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/ic_overview.png',
                  color: blueColor,
                  width: 20,
                ),
                label: "Overview",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/ic_history.png',
                  width: 20,
                ),
                label: "History",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/ic_statistc.png',
                  width: 20,
                ),
                label: "Statistic",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/ic_reward.png',
                  width: 20,
                ),
                label: "Reward",
              ),
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: purpleColor,
        shape: CircleBorder(),
        child: Image.asset(
          'assets/ic_plus_circle.png',
          width: 24,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          BuildProfile(context),
          buildWalletCard(),
          buildLevel(),
          buildServices(context),
          buildLatestTransactions(),
          buildSendAgain(),
          buildFriendlyTips(),
        ],
      ),
    );
  }

  Widget BuildProfile(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Howdy',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                'shaynahan',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semibold,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/profile');
            },
            child: Container(
              width: 60,
              height: 60,
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
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: whiteColor,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.check_circle,
                      color: greenColor,
                      size: 14,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildWalletCard() {
    return Container(
      width: double.infinity,
      height: 220,
      margin: EdgeInsets.only(top: 40),
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/img_card.png',
            ),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shayna Hanna',
            style: whiteTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          Text(
            '**** **** *** 1280',
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
              letterSpacing: 6,
            ),
          ),
          const SizedBox(
            height: 21,
          ),
          Text(
            'Balance',
            style: whiteTextStyle.copyWith(
              fontSize: 14,
            ),
          ),
          Text(
            'Rp 12.5000',
            style: whiteTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semibold,
            ),
          )
        ],
      ),
    );
  }

  Widget buildLevel(){
    return Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Level 1',
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 14,
                ),
                ),
               const Spacer(),
               Text(
                '55%',
                style: greenTextStyle.copyWith(
                  fontWeight: semibold,
                  fontSize: 14,
                ),
                ) ,
                Text(
                  'of Rp.20.000',
                  style: blackTextStyle.copyWith(
                    fontWeight: semibold,
                    fontSize: 14,
                  ),
                  )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(55),
            child: LinearProgressIndicator(
              minHeight: 5,
              value: 0.55,
              valueColor: AlwaysStoppedAnimation(greenColor),
              backgroundColor: lightBackgroundColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildServices(BuildContext context){
   return Container(
    margin: const EdgeInsets.only(
      top: 30,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Do Something',
              style: blackTextStyle.copyWith(
                fontWeight: semibold,
                fontSize: 16,
              ),
          ),
          const SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeServiceItem(
                iconUrl: 'assets/ic_topup.png',
                 title: 'Top Up', 
                 ontTap: (){
                  Navigator.pushNamed(context,  '/topup');
                 },
                ),
              HomeServiceItem(
                iconUrl: 'assets/ic_send.png',
                 title: 'Send', 
                 ontTap: (){
                  Navigator.pushNamed(context, '/transfer');
                 },
                ),
              HomeServiceItem(
                iconUrl: 'assets/ic_withdraw.png',
                 title: 'Withdraw', 
                 ontTap: (){},
                ),
              HomeServiceItem(
                iconUrl: 'assets/ic_more.png',
                 title: 'More', 
                 ontTap: (){
                  showDialog(context: context, builder: (context) => const MoreDialog());
                 },
                ),
            ],
          )
      ],
    ),
   ); 
  }

  Widget buildLatestTransactions(){
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latest Transactions',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(22),
            margin: const EdgeInsets.only(
              top: 14,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
               color: whiteColor,
            ),
            child:  const  Column(
              children: [


                HomeTransactionsItem(
                  iconUrl: 'assets/ic_transaction_cat1.png', 
                  title: 'Top Up', 
                  time: 'Yesterday', 
                  value: '+450.000'
                ),


                HomeTransactionsItem(
                  iconUrl: 'assets/ic_transaction_cat2.png', 
                  title: 'Cashback', 
                  time: 'Sep 11', 
                  value: '+22.000'
                ),


                HomeTransactionsItem(
                  iconUrl: 'assets/ic_transaction_cat3.png', 
                  title: 'Withdraw', 
                  time: 'Sep 2', 
                  value: '-5.000'
                ),



                HomeTransactionsItem(
                  iconUrl: 'assets/ic_transaction_cat4.png', 
                  title: 'Transfer', 
                  time: 'Aug 27', 
                  value: '-123.500'
                ),


                HomeTransactionsItem(
                  iconUrl: 'assets/ic_transaction_cat5.png', 
                  title: 'Electric', 
                  time: 'Feb 18', 
                  value: '-12.300.000'
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
    
  Widget buildSendAgain(){
    return Container(
      margin: EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Send Again',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                HomeUserItem(
                  imageUrl: 'assets/img_friend1.png', 
                  username: 'yuanita'
                  ),
            
            
                HomeUserItem(
                  imageUrl: 'assets/img_friend2.png', 
                  username: 'jani'
                  ),
            
            
                HomeUserItem(
                  imageUrl: 'assets/img_friend3.png', 
                  username: 'urip'
                  ),
            
            
                HomeUserItem(
                  imageUrl: 'assets/img_friend4.png', 
                  username: 'masa'
                  ),
            
            
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildFriendlyTips(){
    return Container(
      margin: const EdgeInsets.only(
        bottom: 50,
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

            Text(
              'Friendly Tips',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semibold,
              ),
            ),

            const SizedBox(
              height: 14 ,
            ),

            Wrap(
              spacing: 17,
              runSpacing: 18,
              children: const  [
            HomeTipsItem(
              imageUrl: 'assets/img_tips1.png', 
              title: 'Best tips for using \na credit card', 
               url: 'https://pub.dev/',
              ),


            HomeTipsItem(
              imageUrl: 'assets/img_tips2.png', 
              title: 'Spot the good pie \nof finance model', 
               url: 'https://google.com/',
              ),


            HomeTipsItem(
              imageUrl: 'assets/img_tips3.png', 
              title: 'Great hack to get \nbetter advices', 
               url: 'https://google.com/',
              ),


            HomeTipsItem(
              imageUrl: 'assets/img_tips4.png', 
              title: 'Save more penny \n buy this instead', 
               url: 'https://google.com/',
              ),

              ],
            ),

        ],
      ),
    );
  }

}


class MoreDialog extends StatelessWidget {
  const MoreDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      alignment: Alignment.bottomCenter,
      content: Container(
        padding: const EdgeInsets.all(30),
        height: 326,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: lightBackgroundColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Do More With us',
              style: blackTextStyle.copyWith(
                fontWeight: semibold,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 13,
            ),

            Wrap(
              spacing: 29,
              runSpacing: 25,
              children: [
                HomeServiceItem(
                iconUrl: 'assets/ic_product_data.png',
                 title: 'Data', 
                 ontTap: (){
                  Navigator.pushNamed(context, '/data-provider');
                 },
                ),
                HomeServiceItem(
                iconUrl: 'assets/ic_product_water.png',
                 title: 'water', 
                 ontTap: (){},
                ),
                HomeServiceItem(
                iconUrl: 'assets/ic_product_stream.png',
                 title: 'stream', 
                 ontTap: (){},
                ),
                HomeServiceItem(
                iconUrl: 'assets/ic_product_movie.png',
                 title: 'movie', 
                 ontTap: (){},
                ),
                HomeServiceItem(
                iconUrl: 'assets/ic_product_food.png',
                 title: 'food', 
                 ontTap: (){},
                ),
                HomeServiceItem(
                iconUrl: 'assets/ic_product_travel.png',
                 title: 'Travel', 
                 ontTap: (){},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
