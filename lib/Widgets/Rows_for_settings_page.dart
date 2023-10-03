import 'package:flutter/material.dart';
import 'package:youtube/assets/colorconstant.dart';

class GeneralRow extends StatelessWidget {
  const GeneralRow({
    super.key,
    required this.mainText,
    required this.switchButton,
    this.subText = '',
    this.fontSize = 17,
    this.fontWeight = FontWeight.normal,
  });
  final String mainText;
  final String subText;
  final bool switchButton;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              mainText,
              style: TextStyle(
                  color: lightcolor,
                  fontSize: fontSize,
                  fontWeight: fontWeight),
            ),
            Text(
              subText,
              style: TextStyle(color: Colors.white38),
            ),
          ],
        ),
        if (switchButton)
          Switch(
              inactiveTrackColor: youtubegrey,
              value: false,
              onChanged: (fal) {})
      ],
    );
  }
}
