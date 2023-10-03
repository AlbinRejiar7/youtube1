import 'package:flutter/material.dart';

var youtubelogo = Container(
  height: 60,
  width: 100,
  decoration: const BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/images/youtube.png',
          ))),
);
