import 'package:flutter/material.dart';

import '../widgets/home_meeting_button.dart';

class MeetingsScreen extends StatelessWidget {
  const MeetingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
