import 'package:flutter/material.dart';

class SearchButt extends StatelessWidget {
  const SearchButt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: SizedBox(
          height: 40,
          child: TextField(
            cursorColor: Colors.white,
            style: TextStyle(fontSize: 15, color: Colors.white),
            decoration: InputDecoration(
              hintText: 'Search YouTube',
              hintStyle: TextStyle(color: Color.fromARGB(111, 255, 255, 255)),
              contentPadding: EdgeInsets.only(bottom: 10, left: 10),
              filled: true,
              fillColor: Color.fromARGB(255, 41, 39, 39),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none),
            ),
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Color.fromARGB(255, 41, 39, 39),
            child: Icon(Icons.mic),
          )
        ],
      ),
    );
  }
}
