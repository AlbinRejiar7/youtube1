// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:youtube/Widgets/mybottom_navigationbar.dart';
import 'package:youtube/Widgets/search.dart';
import 'package:youtube/assets/colorconstant.dart';

import '../bottomnavigationpages/home_page.dart';
import '../bottomnavigationpages/library_page.dart';
import '../bottomnavigationpages/shorts_page.dart';
import '../bottomnavigationpages/subscription_page.dart';

class YourChannel extends StatefulWidget {
  const YourChannel({super.key});

  @override
  State<YourChannel> createState() => _YourChannelState();
}

class _YourChannelState extends State<YourChannel> {
  bool istapped = false;
  int _currindex = 0;
  List bottompages = [
    Bodyhomepage(),
    ShortsPage(),
    null,
    Subscription(),
    Librarypage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: istapped
          ? bottompages[_currindex]
          : Column(
              children: [
                AppBar(
                  automaticallyImplyLeading: true,
                  backgroundColor: Colors.black,
                  actions: [
                    Icon(Icons.cast),
                    SizedBox(
                      width: 15,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SearchButt(),
                            ));
                      },
                      icon: Icon(Icons.search),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                  ],
                  elevation: 0,
                  title: Text(
                    'Username',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.green[800],
                        child: Text(
                          'A',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'NAME',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '@username SubscriberCount VideoCount',
                        style: TextStyle(
                          color: Color.fromARGB(166, 255, 255, 255),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'More about channel >',
                        style: TextStyle(
                          color: const Color.fromARGB(110, 255, 255, 255),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: MediaQuery.sizeOf(context).height * 0.05,
                            width: MediaQuery.sizeOf(context).width * 0.7,
                            decoration: BoxDecoration(
                                color: youtubegrey,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                'Manage Videos',
                                style: TextStyle(
                                    color: lightcolor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: youtubegrey,
                            child: Icon(
                              Icons.graphic_eq,
                              color: lightcolor,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: youtubegrey,
                            child: Icon(
                              Icons.edit_outlined,
                              color: lightcolor,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'data',
                        style: TextStyle(color: Colors.amberAccent),
                      )
                    ],
                  ),
                ),
              ],
            ),
      bottomNavigationBar: MyBottomNav(onItemTapped: (index) {
        setState(() {
          _currindex = index;
          istapped = true;
        });
      }),
    );
  }
}
