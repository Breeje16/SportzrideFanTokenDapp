import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportzride/presentation/journeys/wallet/widgets/cards.dart';
import 'package:sportzride/presentation/journeys/wallet/widgets/fade_animation.dart';
import 'package:sportzride/presentation/journeys/wallet/widgets/history.dart';
import 'package:sportzride/presentation/journeys/wallet/widgets/icons_widget.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    var we = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: we,
            height: he,
            child: Column(
              children: <Widget>[
                FadeAnimation(
                  delay: 1,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Hello,",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "Breeje",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          height: 50.h,
                          width: 50.w,
                          margin: const EdgeInsets.only(left: 200, right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0xFF272A3F)),
                          child: const Icon(
                            Icons.person_outlined,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),

                const Swipercard(), // cards ..
                // Icons custom button //
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconsWidget(
                        title: "Top-Up",
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.send),
                          color: Colors.blue,
                        ),
                        color: const Color(0xFF17334E),
                        delayanimation: 1.5),
                    SizedBox(
                      width: we * 0.03,
                    ),
                    IconsWidget(
                        title: "Receive",
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.payments),
                          color: Colors.red,
                        ),
                        color: const Color(0xFF411C2E),
                        delayanimation: 1.7),
                    SizedBox(
                      width: we * 0.03,
                    ),
                    IconsWidget(
                        title: "Withdraw",
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "assets/images/icons8-cash-withdrawal-96.png",
                            width: we * 0.08,
                            height: we * 0.08,
                            color: Colors.green,
                          ),
                        ),
                        color: const Color(0xFF163333),
                        delayanimation: 1.9),
                    SizedBox(width: we * 0.03),
                    IconsWidget(
                        title: "Transactions",
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.receipt),
                          color: Colors.purple,
                        ),
                        color: const Color(0xFF32204D),
                        delayanimation: 2.1),
                    SizedBox(
                      width: we * 0.03,
                    ),
                    IconsWidget(
                        title: "voucher",
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "assets/images/icons8-voucher-96.png",
                            width: we * 0.08,
                            height: he * 0.08,
                            color: Colors.orange,
                          ),
                          color: Colors.purple,
                        ),
                        color: const Color(0xFF412D27),
                        delayanimation: 2.3),
                  ],
                ),
                SizedBox(
                  height: he * 0.05,
                ),

                // histories from wallet  ..  //
                Historywallet(
                    images: "assets/icons/csk.png",
                    title: "CSK Coin",
                    day: "21Jun 2021",
                    postiveornagtive: "-",
                    money: "11.90",
                    time: "12:01 am"),
                SizedBox(
                  height: he * 0.02,
                ),
                Historywallet(
                    images: "assets/icons/rcb.png",
                    title: "RCB Coin",
                    day: "20Jun 2021",
                    postiveornagtive: "+",
                    money: "63.0",
                    time: "09:0 pm"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
