import 'package:flutter/material.dart';
import 'package:sportzride/presentation/journeys/explore/benefits_widget.dart';
import 'package:sportzride/presentation/journeys/explore/categories_widget.dart';
import 'package:sportzride/presentation/journeys/explore/games_and_reward_widget.dart';
import 'package:sportzride/presentation/journeys/widget/sr_drawer.dart';
import 'package:sportzride/presentation/themes/app_color.dart';
import 'package:sportzride/presentation/journeys/explore/carousel_widget.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.bgMain,
        centerTitle: true,
        title: Row(children: const [
          Text(
            "Sportz",
            style: TextStyle(fontWeight: FontWeight.w500, color: AppColor.red),
          ),
          Text(
            "Ride",
            style:
                TextStyle(fontWeight: FontWeight.bold, color: AppColor.powder),
          ),
        ]),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.notifications_none,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: const SRDrawer(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            CarouselWidget(),
            CategoriesWidget(),
            GamesAndRewardWidget(),
            BenefitsWidget(),
          ],
        ),
      ),
    );
  }
}
