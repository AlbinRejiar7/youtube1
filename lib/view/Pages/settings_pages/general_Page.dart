import 'package:flutter/material.dart';
import 'package:youtube/Widgets/Rows_for_settings_page.dart';

class GeneralPage extends StatelessWidget {
  const GeneralPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> mainText = [
      'Remind me to take a break',
      'Remind me when itis bedtime',
      'Appearance',
      'Playback in feeds',
      'Double-tap to seek',
      'Zoom to fill screen',
      'Uploads',
      'Location',
      'Restricted Mode',
      'Enable Stats for nerds',
    ];
    List<String> subText = [
      'Off',
      'Off',
      'Choose your light or dark theme preference',
      'Choose whether videos play as you browse',
      '10 seconds',
      'Always zoom so that videos fill the screen in full\nscreen',
      'Specify network preferences for uploads',
      'India',
      'This helps hide potentially mature videos. No\n filteris 100% accurate. This setting only applies to \nthis app on this device',
      '',
    ];
    return ListView.builder(
      itemCount: mainText.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(15),
          child: GeneralRow(
              mainText: mainText[index],
              switchButton: index == 0 ||
                      index == 1 ||
                      index == 5 ||
                      index == 8 ||
                      index == 9
                  ? true
                  : false,
              subText: subText[index]),
        );
      },
    );
  }
}
