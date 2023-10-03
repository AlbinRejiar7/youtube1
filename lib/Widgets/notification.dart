// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../Widgets/search.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool ispressedAll = true;
  bool ispressedmen = false;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    List notificationpages = [AllPage(), MentionsPage()];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.cast)),
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
          IconButton(
              onPressed: () {
                showMenu(
                    color: Color(0xff272727),
                    context: context,
                    position: RelativeRect.fromLTRB(10, 0, 0, 0),
                    items: [
                      PopupMenuItem(
                          child: Text(
                        'Settings',
                        style: TextStyle(color: Colors.white),
                      )),
                      PopupMenuItem(
                          child: Text(
                        'Watch on TV',
                        style: TextStyle(color: Colors.white),
                      )),
                      PopupMenuItem(
                          child: Text(
                        'Terms and privacy policy',
                        style: TextStyle(color: Colors.white),
                      )),
                      PopupMenuItem(
                          child: Text(
                        'Help and feedback',
                        style: TextStyle(color: Colors.white),
                      ))
                    ]);
              },
              icon: Icon(Icons.more_vert)),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Notifications',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    index = 0;
                  });
                  ispressedAll = true;
                  ispressedmen = false;
                },
                child: ispressedAll
                    ? Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Text(
                          'All',
                          style: TextStyle(fontSize: 17),
                        ),
                      )
                    : Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            color: Color(0xff272727),
                            borderRadius: BorderRadius.circular(12)),
                        child: Text(
                          'All',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                      ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    index = 1;
                    ispressedmen = true;
                    ispressedAll = false;
                  });
                },
                child: ispressedmen
                    ? Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Text(
                          'Mentions',
                          style: TextStyle(fontSize: 17),
                        ),
                      )
                    : Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            color: Color(0xff272727),
                            borderRadius: BorderRadius.circular(12)),
                        child: Text(
                          'Mentions',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                      ),
              ),
            ],
          ),
          notificationpages[index],
        ],
      ),
    );
  }
}

class MentionsPage extends StatefulWidget {
  const MentionsPage({super.key});

  @override
  State<MentionsPage> createState() => _MentionsPageState();
}

class _MentionsPageState extends State<MentionsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
        ),
        Center(
          child: Text(
            "@",
            style: TextStyle(
                fontSize: 200, color: const Color.fromARGB(147, 255, 255, 255)),
          ),
        ),
        Center(
          child: Text(
            "No mentions yet",
            style: TextStyle(
                fontSize: 17, color: const Color.fromARGB(147, 255, 255, 255)),
          ),
        )
      ],
    );
  }
}

class AllPage extends StatefulWidget {
  const AllPage({
    super.key,
  });

  @override
  State<AllPage> createState() => _AllPageState();
}

class _AllPageState extends State<AllPage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              children: [
                CircleAvatar(),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'VIDEO TITLE GOES HERE',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    Text(
                      '2 hours ago',
                      style: TextStyle(
                        color: const Color.fromARGB(124, 255, 255, 255),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 70,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
