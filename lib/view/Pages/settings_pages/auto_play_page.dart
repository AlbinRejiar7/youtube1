// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:youtube/Widgets/Rows_for_settings_page.dart';

class Autoplay extends StatelessWidget {
  const Autoplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          GeneralRow(
            mainText: 'Autoplay Next video',
            switchButton: false,
            subText: 'When you finish a video,another plays automatically',
          ),
          SizedBox(
            height: 10,
          ),
          GeneralRow(mainText: 'Mobile Phone/tablet', switchButton: true),
        ],
      ),
    );
  }
}
