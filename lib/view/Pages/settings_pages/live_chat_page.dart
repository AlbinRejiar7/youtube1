import 'package:flutter/material.dart';
import 'package:youtube/Widgets/Rows_for_settings_page.dart';
import 'package:youtube/assets/colorconstant.dart';

class LiveChatPage extends StatelessWidget {
  const LiveChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkcolor,
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            GeneralRow(
              mainText: 'Hold for review',
              switchButton: true,
              subText:
                  'Potentially inappropriate messages will be held\n for review in your chat',
            )
          ],
        ),
      ),
    );
  }
}
