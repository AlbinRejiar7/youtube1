import 'package:flutter/material.dart';
import 'package:youtube/Widgets/Rows_for_settings_page.dart';
import 'package:youtube/assets/colorconstant.dart';

class DataSavingPage extends StatelessWidget {
  const DataSavingPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> mainText = [
      'Data saving mode',
      'Default settings',
      'Reduce video quality',
      'Reduce video quality',
      'Reduce download quality',
      'Reduce Smart downloads quality',
      'Only download over Wi-Fi and unrestricted\nmobile data',
      'Upload over Wi-Fi only',
      'Muted playback in feeds over Wi-Fi only',
      'Data monitoring & control',
      'Select quality for every video',
      'Mobile data usage reminder',
    ];
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView.separated(
        separatorBuilder: (context, index) => index == 8
            ? Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Divider(
                  color: youtubegrey,
                  thickness: 10,
                ),
              )
            : SizedBox(
                height: 10,
              ),
        itemCount: 12,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return GeneralRow(
              mainText: mainText[index],
              switchButton: true,
              subText: 'Automatically adjusts settings to save mobile\ndata',
            );
          } else if (index == 1) {
            return GeneralRow(
              mainText: mainText[index],
              switchButton: false,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            );
          } else if (index == 9) {
            return GeneralRow(
              mainText: mainText[index],
              switchButton: false,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            );
          } else {
            return GeneralRow(
              mainText: mainText[index],
              switchButton: true,
            );
          }
        },
      ),
    );
  }
}
