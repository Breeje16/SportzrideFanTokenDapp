import 'package:flutter/material.dart';
import 'package:sportzride/presentation/journeys/exchange/exchange_screen.dart';
import 'package:sportzride/presentation/journeys/explore/explore_screen.dart';
import 'package:sportzride/presentation/journeys/feed/feed_screen.dart';
import 'package:sportzride/presentation/journeys/wallet/wallet_screen.dart';
import 'package:sportzride/presentation/themes/app_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List listOfScreens = [
    const ExploreScreen(),
    const ExchangeScreen(),
    const FeedScreen(),
    const WalletScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: AppColor.bgMain,
      //   automaticallyImplyLeading: false,
      //   centerTitle: true,
      //   leading: const Icon(Icons.menu),
      //   title: Row(children: const [
      //     Text(
      //       "Sportz",
      //       style: TextStyle(fontWeight: FontWeight.w500, color: AppColor.red),
      //     ),
      //     Text(
      //       "Ride",
      //       style:
      //           TextStyle(fontWeight: FontWeight.bold, color: AppColor.powder),
      //     ),
      //   ]),
      //   actions: const [
      //     Padding(
      //       padding: EdgeInsets.symmetric(horizontal: 16),
      //       child: Icon(
      //         Icons.notifications_none,
      //         color: Colors.white,
      //       ),
      //     ),
      //   ],
      // ),

      body: listOfScreens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.red.shade100,
          labelTextStyle: MaterialStateProperty.all(const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w800,
            color: AppColor.powder,
          )),
        ),
        child: NavigationBar(
          height: 60,
          backgroundColor: AppColor.bgMain,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: const [
            NavigationDestination(
                icon: Icon(
                  Icons.explore_outlined,
                  color: Colors.white,
                ),
                selectedIcon: Icon(Icons.explore),
                label: 'Explore'),
            NavigationDestination(
                icon: Icon(
                  Icons.analytics_outlined,
                  color: Colors.white,
                ),
                selectedIcon: Icon(Icons.analytics),
                label: 'Exchange'),
            NavigationDestination(
                icon: Icon(
                  Icons.feed_outlined,
                  color: Colors.white,
                ),
                selectedIcon: Icon(Icons.feed),
                label: 'Feed'),
            NavigationDestination(
                icon: Icon(
                  Icons.account_balance_wallet_outlined,
                  color: Colors.white,
                ),
                selectedIcon: Icon(Icons.account_balance_wallet),
                label: 'Wallet'),
          ],
        ),
      ),
    );
  }
}
