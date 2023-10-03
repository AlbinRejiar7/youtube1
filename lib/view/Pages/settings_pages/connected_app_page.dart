import 'package:flutter/material.dart';

class ConnectedAppPage extends StatelessWidget {
  const ConnectedAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> connAppsText = [
      "Activision ID",
      "Battle.net",
      "Electronics Arts",
      "Epic Games",
      "Garena",
      "Krafton",
      "MLBB",
      "NFL ID",
      "PUBG MOBILE",
      "Riot Games",
      "Supercell ID",
      "Ubisoft account"
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: connAppsText.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://img.freepik.com/free-photo/luminous-metaverse-background_23-2149539960.jpg?size=626&ext=jpg&uid=R115585454&ga=GA1.2.1003115401.1692644975&semt=sph")),
            title: Text(
              connAppsText[index],
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            subtitle: Text(
              "Not connected",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            onTap: () {},
          );
        },
      ),
    );
  }
}
