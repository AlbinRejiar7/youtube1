import 'package:flutter/material.dart';

class VideoqualityPage extends StatefulWidget {
  const VideoqualityPage({Key? key}) : super(key: key);

  @override
  State<VideoqualityPage> createState() => _VideoqualityPageState();
}

class _VideoqualityPageState extends State<VideoqualityPage> {
  int? selectedOptionMobile = 0;
  int? selectedOptionWiFi = 0;

  List<String> titleText = [
    'Auto (recommended)',
    'Higher Picture Quality',
    'Data Saver'
  ];
  List<String> subtitleText = [
    'Adjusts to give you the best experience for your conditions',
    'Uses more data',
    'Lower picture quality'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Select your default streaming quality for all videos. You can change streaming quality in player options for single videos.",
            maxLines: 4,
            style: TextStyle(
              fontSize: 15,
              overflow: TextOverflow.ellipsis,
              color: Color.fromARGB(255, 215, 213, 213),
            ),
          ),
        ),
        const Divider(
          color: Colors.grey,
        ),
        buildListView('VIDEO QUALITY ON MOBILE NETWORKS', selectedOptionMobile),
        const Divider(
          color: Colors.grey,
        ),
        buildListView('VIDEO QUALITY ON WI-FI', selectedOptionWiFi),
      ],
    );
  }

  Widget buildListView(String heading, int? selectedOption) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            heading,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: titleText.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                titleText[index],
                style: const TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                subtitleText[index],
                style: const TextStyle(
                  color: Color.fromARGB(255, 179, 178, 178),
                ),
              ),
              trailing: Radio(
                fillColor: selectedOption == index
                    ? const MaterialStatePropertyAll(Colors.blue)
                    : const MaterialStatePropertyAll(Colors.grey),
                activeColor: Colors.blue,
                value: index,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    if (heading == 'VIDEO QUALITY ON MOBILE NETWORKS') {
                      selectedOptionMobile = value;
                    } else if (heading == 'VIDEO QUALITY ON WI-FI') {
                      selectedOptionWiFi = value;
                    }
                  });
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
