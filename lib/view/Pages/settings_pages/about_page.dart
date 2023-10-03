import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    List<String> titleText = [
      "Help",
      'Send Feedback',
      "YouTube Terms of Service",
      "Google Privacy Policy",
      "Open-source",
      "App version",
      "YouTube, a Google Company"
    ];
    List<String> subtitleText = [
      "Find answers to your YouTube questions here ",
      'Help us make YouTube better',
      "Read YouTube's Terms of Service",
      "Read Mobile Privacy Policy",
      "License details for open-source software",
      "18.38.43",
      ""
    ];

    return ListView.builder(
        itemCount: titleText.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              titleText[index],
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
            subtitle: Text(
              subtitleText[index],
              style: const TextStyle(color: Colors.grey),
            ),
          );
        });
  }
}
