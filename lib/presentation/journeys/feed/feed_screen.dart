import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportzride/presentation/journeys/feed/feed_card_widget.dart';
import 'package:sportzride/presentation/journeys/feed/polls_widget.dart';
import 'package:sportzride/presentation/journeys/feed/posts_widget.dart';
import 'package:sportzride/presentation/journeys/feed/prediction_widget.dart';
import 'package:sportzride/presentation/journeys/widget/sr_drawer.dart';
import 'package:sportzride/presentation/themes/app_color.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.feed),
                text: "Posts",
              ),
              Tab(
                icon: Icon(Icons.batch_prediction),
                text: "Prediction",
              ),
              Tab(
                icon: Icon(Icons.poll),
                text: "Polls",
              ),
            ],
          ),
          backgroundColor: AppColor.bgMain,
          elevation: 0,
          title: const Text(
            "Feed",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          actions: [
            SizedBox(
              height: 50.h,
              width: 50.w,
              child: Image.asset("assets/images/logo.png"),
            ),
          ],
        ),
        drawer: const SRDrawer(),
        body: const TabBarView(
          children: [
            PostsWidget(),
            PredictionWidget(),
            PollsScreen(),
          ],
        ),
      ),
    );
  }
}
