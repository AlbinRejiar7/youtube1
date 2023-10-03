import 'package:flutter/material.dart';
import 'package:youtube/Widgets/Rows_for_settings_page.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> mainText = [
      'Scheduled digest',
      'Subscriptions',
      'Channel settings',
      'Recommended videos',
      'Recommended ways to create',
      'Activity on my channel',
      'Community post suggestions',
      'Replies to my comments',
      'Mentions',
      'Shared content',
      'Product updates',
      'promotional content and offerings',
      'Watch on TV',
      'Disable sounds & vibrations',
    ];
    List<String> subText = [
      'Get all your notifications as a daily digest at 7:00PM\nTap to customize delivery time',
      "Notify me about activity from the channels I'm\nsubscribed to",
      'Tap here to manage notification settings for each\nsubscribed channel',
      'Notify me of videos I might like based on what I\nwatch',
      'Notify me With recommended trends and ways to\ncreate',
      'Notify me about comments and other activity on\nmy channel or videos',
      'Notify me of suggested community post\nfor my channel',
      'Notify me about replies to my comments',
      'Notify me when others mention my channel',
      'Notify me when others share my content on their\nChannels',
      'Notify me of new product updates and\nannouncements',
      'Notify me of promotional content and offerings,\nlike members-only perks',
      'Suggest videos I might like to watch on TV,',
      'Silence notifications during the hours you specify.\nTap to customize time.',
    ];

    return ListView.builder(
      itemCount: mainText.length,
      itemBuilder: (BuildContext context, int index) {
        return index == 0
            ? const Padding(
                padding: EdgeInsets.all(8.0),
                child: GeneralRow(
                  mainText: 'Mobile notifications',
                  switchButton: false,
                  fontWeight: FontWeight.bold,
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: GeneralRow(
                  mainText: mainText[index],
                  switchButton: true,
                  subText: subText[index],
                ),
              );
      },
    );
  }
}
