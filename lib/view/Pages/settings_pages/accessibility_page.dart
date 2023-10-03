import 'package:flutter/material.dart';

class Accessibility extends StatefulWidget {
  const Accessibility({super.key});

  @override
  State<Accessibility> createState() => _AccessibilityState();
}

class _AccessibilityState extends State<Accessibility> {
  @override
  Widget build(BuildContext context) {
    List<String> titleText = [
      "Accessibility player",
      'Hide player controls',
    ];
    List<String> subtitleText = [
      "Display accessibility controls in the player ",
      'Never',
    ];

    var isSwitched = false;
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
            trailing: index == 0
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
                : const Text(""),
          );
        });
  }
}
