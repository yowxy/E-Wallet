import "package:e_wallet/shared/theme.dart";
import "package:e_wallet/ui/widgets/home_service_item.dart";
import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
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
          BuildProfile(),
          buildWalletCard(),
          buildLevel(),
          buildServices(),
          buildLatestTransactions(),
        ],
      ),
    );
  }

  Widget BuildProfile() {
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
          Container(
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

  Widget buildServices(){
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
                 ontTap: (){},
                ),
              HomeServiceItem(
                iconUrl: 'assets/ic_send.png',
                 title: 'Send', 
                 ontTap: (){},
                ),
              HomeServiceItem(
                iconUrl: 'assets/ic_withdraw.png',
                 title: 'Withdraw', 
                 ontTap: (){},
                ),
              HomeServiceItem(
                iconUrl: 'assets/ic_more.png',
                 title: 'More', 
                 ontTap: (){},
                ),
            ],
          )
      ],
    ),
   ); 
  }

  Widget buildLatestTransactions(){
    return Container(
      margin: EdgeInsets.only(
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



          // const SizedBox(
          //   height: 14,
          // ),


          Container(
            padding: const EdgeInsets.all(22),
            margin: const EdgeInsets.only(
              top: 14,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
               color: whiteColor,
            ),
          ),
        ],
      ),
    );
  }


}
