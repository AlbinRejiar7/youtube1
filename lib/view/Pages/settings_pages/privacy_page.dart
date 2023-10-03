import 'package:flutter/material.dart';

class Privacy extends StatefulWidget {
  const Privacy({super.key});

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    List<String> titleText = [
      "Google Ads Settings",
      'Block contacts',
      "YouTube Terms of Service",
    ];
    List<String> subtitleText = [
      "Manage your ads settings from your Google Ads Settings",
      "",
      "Read YouTube's Terms of Service",
    ];

    return ListView.builder(
        itemCount: titleText.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              titleText[index],
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            subtitle: Text(
              subtitleText[index],
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          );
        });
  }
}
