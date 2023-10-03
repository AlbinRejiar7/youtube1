import 'package:flutter/material.dart';
import 'package:youtube/assets/colorconstant.dart';
import 'package:youtube/view/Pages/settings_pages/about_page.dart';
import 'package:youtube/view/Pages/settings_pages/accessibility_page.dart';
import 'package:youtube/view/Pages/settings_pages/auto_play_page.dart';
import 'package:youtube/view/Pages/settings_pages/captions_page.dart';
import 'package:youtube/view/Pages/settings_pages/connected_app_page.dart';
import 'package:youtube/view/Pages/settings_pages/data_saving_page.dart';
import 'package:youtube/view/Pages/settings_pages/download_page.dart';
import 'package:youtube/view/Pages/settings_pages/general_Page.dart';
import 'package:youtube/view/Pages/settings_pages/privacy_page.dart';
import 'package:youtube/view/Pages/settings_pages/video_quality_preferences.dart';
import 'package:youtube/view/Pages/settings_pages/watchontv_page.dart';

import '../settings_pages/billing_page.dart';
import '../settings_pages/live_chat_page.dart';
import '../settings_pages/notifications_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int index1 = 0;
  bool istapped = false;
  int tapcounter = 0;
  bool backtosettingsscreen = false;

  List<String> settingName = [
    'General',
    'Data saving',
    'Autoplay',
    'Video quality preferences',
    'Downloads',
    'Watch on TV',
    'Manage all history',
    'Privacy',
    'Try new features',
    'Purchases and memberships',
    'Billing & payments',
    'Notifications',
    'Connected apps',
    'Live chat',
    'captions',
    'Accessibility',
    'About',
  ];
  List settinPages = [
    const GeneralPage(),
    const DataSavingPage(),
    const Autoplay(),
    const VideoqualityPage(),
    const DownloadPage(),
    const WatchOnTVPage(),
    const Privacy(),
    const Privacy(),
    const Privacy(),
    const Privacy(),
    const BillingPage(),
    const NotificationsPage(),
    const ConnectedAppPage(),
    const LiveChatPage(),
    const Captions(),
    const Accessibility(),
    const About(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkcolor,
      appBar: AppBar(
        actions: index1 == 12
            ? [
                IconButton(onPressed: () {}, icon: const Icon(Icons.cast)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
              ]
            : [],
        leading: IconButton(
            onPressed: () {
              setState(() {
                istapped = false;
                index1 = 0;
              });
            },
            icon: istapped == false
                ? GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      size: 40,
                      Icons.close,
                    ))
                : const Icon(Icons.arrow_back_outlined)),
        backgroundColor: darkcolor,
        elevation: 0,
        title: Text(
          istapped ? settingName[index1] : 'Settings',
          style: TextStyle(color: lightcolor),
        ),
      ),
      body:
          istapped ? settinPages[index1] : settingsLIstviewbuilder(settingName),
    );
  }

  ListView settingsLIstviewbuilder(List<String> settingName) {
    return ListView.builder(
      padding: const EdgeInsets.only(left: 15),
      itemCount: settingName.length,
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return settingsButton(settingName, index);
        } else if (index == 1) {
          return settingsButton(settingName, index);
        } else if (index == 2) {
          return settingsButton(settingName, index);
        } else if (index == 3) {
          return settingsButton(settingName, index);
        } else if (index == 4) {
          return settingsButton(settingName, index);
        } else if (index == 5) {
          return settingsButton(settingName, index);
        } else if (index == 6) {
          return settingsButton(settingName, index);
        } else if (index == 7) {
          return settingsButton(settingName, index);
        } else if (index == 8) {
          return settingsButton(settingName, index);
        } else if (index == 9) {
          return settingsButton(settingName, index);
        } else if (index == 10) {
          return settingsButton(settingName, index);
        } else if (index == 11) {
          return settingsButton(settingName, index);
        } else if (index == 12) {
          return settingsButton(settingName, index);
        } else if (index == 13) {
          return settingsButton(settingName, index);
        } else if (index == 14) {
          return settingsButton(settingName, index);
        } else if (index == 15) {
          return settingsButton(settingName, index);
        } else {
          return settingsButton(settingName, index);
        }
      },
    );
  }

  Padding settingsButton(List<String> settingName, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: InkWell(
        onTap: () {
          setState(() {
            istapped = true;
            index1 = index;
          });
        },
        child: Text(
          settingName[index],
          style: TextStyle(
            color: lightcolor,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
