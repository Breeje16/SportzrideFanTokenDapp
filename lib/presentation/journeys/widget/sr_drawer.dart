import 'package:flutter/material.dart';
import 'package:sportzride/presentation/themes/app_color.dart';

class SRDrawer extends StatefulWidget {
  const SRDrawer({Key? key}) : super(key: key);

  @override
  _SRDrawerState createState() => _SRDrawerState();
}

class _SRDrawerState extends State<SRDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColor.bgMain,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Breeje Modi'),
            accountEmail: const Text('breeje2001@gmail.com'),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/samplepp.jpg'),
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/coverp.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            onDetailsPressed: () {},
          ),
          ListTile(
            title: const Text(
              'Leaderboard',
              style: TextStyle(color: AppColor.powder),
            ),
            leading: const Icon(
              Icons.leaderboard,
              color: Colors.white,
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              'My Badges',
              style: TextStyle(color: AppColor.powder),
            ),
            leading: const Icon(
              Icons.badge,
              color: Colors.white,
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              'My Rewards',
              style: TextStyle(color: AppColor.powder),
            ),
            leading: const Icon(
              Icons.redeem,
              color: Colors.white,
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              'Refer & Earn',
              style: TextStyle(color: AppColor.powder),
            ),
            leading: const Icon(
              Icons.share,
              color: Colors.white,
            ),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Settings',
              style: TextStyle(color: AppColor.powder),
            ),
            leading: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              'Feedback',
              style: TextStyle(color: AppColor.powder),
            ),
            leading: const Icon(
              Icons.feedback,
              color: Colors.white,
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              'Report a Bug',
              style: TextStyle(color: AppColor.powder),
            ),
            leading: const Icon(
              Icons.bug_report,
              color: Colors.white,
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              'Logout',
              style: TextStyle(color: AppColor.powder),
            ),
            leading: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
