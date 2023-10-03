import 'package:flutter/material.dart';

class WatchOnTVPage extends StatefulWidget {
  const WatchOnTVPage({super.key});

  @override
  State<WatchOnTVPage> createState() => _WatchOnTVPageState();
}

class _WatchOnTVPageState extends State<WatchOnTVPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 100,
          color: Color.fromARGB(255, 252, 29, 13),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Connect to the same Wi_Fi network as your TV",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "No TVs found",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Check your phone settings and try again. If that doesn't work, you can also link your TV and phone using a TV code.",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Get help",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Link with TV code",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Another way of connecting devices. Learn how to get a code from your TV to enter here.",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Enter TV code",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Can't find your TV?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
