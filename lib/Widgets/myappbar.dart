// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:youtube/Widgets/search.dart';
import 'package:youtube/assets/colorconstant.dart';
import 'package:youtube/assets/youtubelogo.dart';

import 'appbar_profile_bottomsheets.dart';
import 'notification.dart';

class MyAppbar extends StatefulWidget {
  const MyAppbar({super.key});

  @override
  State<MyAppbar> createState() => _MyAppbarState();
}

class _MyAppbarState extends State<MyAppbar> {
  @override
  Widget build(BuildContext context) {
    List<IconData> profilebottomsheeticons = [
      Icons.account_box_outlined,
      Icons.incomplete_circle_rounded,
      Icons.person_add,
      Icons.video_settings_outlined,
      Icons.monetization_on_outlined,
      Icons.insert_chart_outlined,
      Icons.privacy_tip_outlined,
      Icons.settings_outlined,
      Icons.help_outline,
      Icons.hexagon,
      Icons.circle,
      Icons.square,
    ];
    List<String> profilebottomsheetstrings = [
      'Your channel',
      'Turn on Incognito',
      'Add account',
      'Get YouTube Premium',
      'Purchases and membership',
      'Time watched',
      'Your data on Youtube',
      'Settings',
      'Help and feedback',
      'YouTube Studio',
      'YouTube Music',
      'YouTube Kids',
    ];

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(
          height: 60,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              youtubelogo,
              SizedBox(
                height: 60,
                width: MediaQuery.of(context).size.width / 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                  backgroundColor: youtubegrey,
                                  title: Text(
                                    'Connect To a device',
                                    style: TextStyle(color: lightcolor),
                                  ),
                                  content: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'No device Found',
                                          style: TextStyle(color: lightcolor),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.connected_tv_sharp,
                                              color: lightcolor,
                                            ),
                                            SizedBox(
                                              width: 17,
                                            ),
                                            Text(
                                              'link with TV code',
                                              style:
                                                  TextStyle(color: lightcolor),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.info_outline_rounded,
                                              color: lightcolor,
                                            ),
                                            SizedBox(
                                              width: 17,
                                            ),
                                            Text(
                                              'Learn more',
                                              style:
                                                  TextStyle(color: lightcolor),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )));
                        },
                        icon: Icon(
                          Icons.cast,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NotificationPage(),
                              ));
                        },
                        icon: Icon(
                          Icons.notifications_outlined,
                          color: Colors.white,
                        )),
                    InkResponse(
                        borderRadius: BorderRadius.circular(5),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SearchButt(),
                              ));
                        },
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {
                          appbarbottomsheet(
                              context,
                              height,
                              width,
                              profilebottomsheeticons,
                              profilebottomsheetstrings);
                        },
                        icon: Icon(
                          Icons.circle,
                          color: Colors.blue,
                        ))
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
