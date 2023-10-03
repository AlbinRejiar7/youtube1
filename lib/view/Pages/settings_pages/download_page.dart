// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({super.key});

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  @override
  Widget build(BuildContext context) {
    List<String> titleText = [
      "Download quality",
      'Download over Wi-Fi only',
      'Recommended DownloadPage',
      'Downloading Help',
      'Delete all DownloadPage',
    ];
    List<String> subtitleText = [
      "Ask each time",
      '',
      '',
      'Find answers to your questions about downloading videos',
      '',
    ];
    var isSwitched = false;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Download",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Expanded(
            child: SizedBox(
              child: ListView.builder(
                  itemCount: titleText.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                        title: Text(
                          titleText[index],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        subtitle: Text(
                          subtitleText[index],
                          style: TextStyle(
                            color: Color.fromARGB(255, 114, 112, 112),
                            fontSize: 17,
                          ),
                        ),
                        trailing: index == 1 || index == 2
                            ? Switch(
                                activeColor: Colors.blue,
                                inactiveTrackColor: Colors.grey,
                                value: isSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched = !isSwitched;
                                  });
                                },
                              )
                            : Text(""));
                  }),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Available storage',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey,
                ),
                LinearProgressIndicator(
                  backgroundColor: const Color.fromARGB(255, 218, 216, 216),
                  value: 0.0475,
                  minHeight: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            color: Colors.blue,
                          ),
                          Text(
                            ' ${(0.0475 * 100)}MB used',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '${500 - (0.0475 * 100)} GB free ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            color: const Color.fromARGB(255, 218, 216, 216),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
