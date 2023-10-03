// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:youtube/assets/youtubelogo.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> DrawerTEXT = [
      'Trending',
      'Shopping',
      'Music',
      'Film',
      'Live',
      'Gaming',
      'News',
      'Sports',
      'Learning',
      'Fashion & beauty',
    ];
    List<Icon> DrawerICons = [
      Icon(
        Icons.local_fire_department_outlined,
        color: Colors.white,
      ),
      Icon(
        Icons.local_mall_outlined,
        color: Colors.white,
      ),
      Icon(
        Icons.music_note_outlined,
        color: Colors.white,
      ),
      Icon(
        Icons.movie_creation_outlined,
        color: Colors.white,
      ),
      Icon(
        Icons.sensors_rounded,
        color: Colors.white,
      ),
      Icon(
        Icons.sports_esports,
        color: Colors.white,
      ),
      Icon(
        Icons.newspaper,
        color: Colors.white,
      ),
      Icon(
        Icons.emoji_events_outlined,
        color: Colors.white,
      ),
      Icon(
        Icons.lightbulb_outline,
        color: Colors.white,
      ),
      Icon(
        Icons.dry_cleaning,
        color: Colors.white,
      ),
    ];
    return Drawer(
      backgroundColor: Color(0xff202021),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          youtubelogo,
          Expanded(
            child: ListView.builder(
              itemCount: DrawerTEXT.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    bottom: 20,
                  ),
                  child: Row(
                    children: [
                      DrawerICons[index],
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        DrawerTEXT[index],
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
