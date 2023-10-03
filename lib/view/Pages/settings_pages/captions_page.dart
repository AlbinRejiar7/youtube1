import 'package:flutter/material.dart'; // ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

class Captions extends StatefulWidget {
  const Captions({super.key});

  @override
  State<Captions> createState() => _CaptionsState();
}

class _CaptionsState extends State<Captions> {
  @override
  Widget build(BuildContext context) {
    List<String> titleText = [
      "Show captions",
      'Caption size and style',
      'More options'
    ];
    List<String> subtitleText = [
      "For support app only ",
      'Default text size',
      '',
    ];

    var isSwitched = false;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Caption\nPreferences",
            style: TextStyle(
              color: Color.fromARGB(255, 74, 216, 147),
              fontSize: 35,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                width: 500,
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/caption.png"))),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              child: ListView.builder(
                  itemCount: titleText.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        titleText[index],
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      subtitle: Text(
                        subtitleText[index],
                        style: TextStyle(color: Colors.grey),
                      ),
                      trailing: index == 0
                          ? Switch(
                              activeColor: Colors.green,
                              inactiveTrackColor: Colors.grey,
                              value: isSwitched,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched = !isSwitched;
                                });
                              },
                            )
                          : Icon(
                              Icons.chevron_right,
                              color: Colors.grey,
                            ),
                    );
                  }),
            ),
          ),
          Expanded(
            child: Text(
              "Not all apps support these caption \npreferences",
              style: TextStyle(
                  color: Color.fromARGB(255, 74, 216, 147), fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }
}
