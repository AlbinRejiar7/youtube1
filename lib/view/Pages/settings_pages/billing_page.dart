import 'package:flutter/material.dart';
import 'package:youtube/Widgets/Rows_for_settings_page.dart';
import 'package:youtube/assets/colorconstant.dart';

class BillingPage extends StatelessWidget {
  const BillingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkcolor,
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            GeneralRow(
              mainText: 'Enable quick purchase',
              switchButton: true,
              subText:
                  'Make YouTube purchases on all devices without\nverifying your account.',
            ),
            SizedBox(
              height: 20,
            ),
            GeneralRow(
              mainText: 'On this device, my preferred verification is:',
              switchButton: false,
              subText: 'Account password',
            ),
          ],
        ),
      ),
    );
  }
}
