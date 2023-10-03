// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:youtube/Widgets/myappbar.dart';
import 'package:youtube/assets/shortsimages.dart';
import 'package:youtube/assets/thumbnail.dart';

class Subscription extends StatelessWidget {
  const Subscription({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> subStrings = [
      'All',
      'Today',
      'Live',
      'Continue Watching',
      'Unwatched',
      'Posts',
      'Settings',
    ];

    return SafeArea(
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => <Widget>[],
        body: Column(
          children: [
            MyAppbar(),
            Row(
              children: [
                Expanded(
                  flex: 9,
                  child: SizedBox(
                      height: 80,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: mythumbnail.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage:
                                      NetworkImage(mythumbnail[index]),
                                ),
                                Text(
                                  'username',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          );
                        },
                      )),
                ),
                Expanded(
                  child: Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'All',
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 40,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: subStrings.length,
                        itemBuilder: (BuildContext context, int index) {
                          return index == subStrings.length - 1
                              ? TextButton(
                                  onPressed: () {},
                                  child: Center(
                                    child: Text(
                                      subStrings[index],
                                    ),
                                  ),
                                )
                              : Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 43, 37, 37),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(7))),
                                    child: Center(
                                        child: Text(
                                      subStrings[index],
                                      style: TextStyle(color: Colors.white),
                                    )),
                                  ),
                                );
                        }),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: myimages.length,
                itemBuilder: (BuildContext context, int index) {
                  return index == 1
                      ? Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.bolt,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                Text('Shorts',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ],
                            ),
                            SizedBox(
                              height: 240,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: myimages.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 150,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: myimages[index]),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Text(
                                            'PUBG#1\n5.6M views',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            Container(
                              height: 230,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  image:
                                      DecorationImage(image: myimages[index])),
                            ),
                            ListTile(
                              trailing: Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              ),
                              leading: CircleAvatar(
                                radius: 25,
                              ),
                              title: Text(
                                'Video title goes here',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              subtitle: Text(
                                'Channel Name • views • Posted Time',
                                style: TextStyle(
                                  color:
                                      const Color.fromARGB(99, 255, 255, 255),
                                ),
                              ),
                            )
                          ],
                        );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
