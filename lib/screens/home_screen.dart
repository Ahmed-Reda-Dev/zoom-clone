import 'package:flutter/material.dart';
import 'package:zoom_clone/utils/colors.dart';

import '../widgets/home_meeting_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: const Text('Meet & Chat'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HomeMeetingButton(
                onTap: () {},
                icon: Icons.video_call,
                text: 'New Meeting',
              ),
              HomeMeetingButton(
                onTap: () {},
                icon: Icons.add_box_rounded,
                text: 'Join Meeting',
              ),
              HomeMeetingButton(
                onTap: () {},
                icon: Icons.calendar_today_rounded,
                text: 'Schedule',
              ),
              HomeMeetingButton(
                onTap: () {},
                icon: Icons.screen_share_rounded,
                text: 'Share Screen',
              ),
            ],
          ),
          const Expanded(
            child: Center(
              child: Text(
                'Create/Join Meetings with just one click!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: footerColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: onPageChanged,
        currentIndex: _page,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 14,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.comment_bank),
            label: 'Meet & Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock_clock),
            label: 'Mettings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  void onPageChanged(int value) {
    setState(() {
      _page = value;
    });
  }
}
