import 'package:flutter/material.dart';
import 'package:youtube/Widgets/drawer.dart';
import 'package:youtube/Widgets/mybottom_navigationbar.dart';
import 'package:youtube/view/Pages/bottomnavigationpages/home_page.dart';
import 'package:youtube/view/Pages/bottomnavigationpages/library_page.dart';
import 'package:youtube/view/Pages/bottomnavigationpages/shorts_page.dart';
import 'package:youtube/view/Pages/bottomnavigationpages/subscription_page.dart';

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables,

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
      drawer: Mydrawer(),
      backgroundColor: Colors.black,
      body: bottompages[_currindex],
      bottomNavigationBar: MyBottomNav(
        onItemTapped: (index) {
          setState(() {
            _currindex = index;
          });
        },
      ),
    );
  }
}
