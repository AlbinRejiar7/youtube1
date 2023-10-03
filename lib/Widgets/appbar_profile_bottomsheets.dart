import 'package:flutter/material.dart';
import 'package:youtube/view/Pages/appbarprofilepages/settings_page.dart';

import '../view/Pages/appbarprofilepages/your_channel_page.dart';

PersistentBottomSheetController<dynamic> appbarbottomsheet(
    BuildContext context,
    double height,
    double width,
    List<IconData> profilebottomsheeticons,
    List<String> profilebottomsheetstrings) {
  return showBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        height: height,
        width: width,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            top: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkResponse(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ],
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 20,
                ),
                title: Text(
                  'Name',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle:
                    Text('username', style: TextStyle(color: Colors.white)),
                trailing: Icon(Icons.chevron_right, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 65),
                child: TextButton(
                  onPressed: () {},
                  child: Text('Manage your Google Account'),
                ),
              ),
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          if (index == 0) {
                            return InkResponse(
                              splashColor: Colors.blue,
                              onTap: () {
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => YourChannel(),
                                  ),
                                  (route) => route.isFirst,
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  children: [
                                    Icon(
                                      profilebottomsheeticons[index],
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      profilebottomsheetstrings[index],
                                      style: TextStyle(
                                          fontSize: 17, color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            );
                          } else if (index == 7) {
                            return Padding(
                              padding: const EdgeInsets.all(8),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SettingsPage(),
                                      ));
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      profilebottomsheeticons[index],
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      profilebottomsheetstrings[index],
                                      style: TextStyle(
                                          fontSize: 17, color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            );
                          } else {
                            return Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  Icon(
                                    profilebottomsheeticons[index],
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    profilebottomsheetstrings[index],
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.white),
                                  )
                                ],
                              ),
                            );
                          }
                        },
                        separatorBuilder: (context, index) =>
                            index == 2 || index == 6 || index == 8
                                ? Divider(
                                    color: Colors.white,
                                  )
                                : Container(),
                        itemCount: profilebottomsheeticons.length)),
              ),
              Center(
                child: Text(
                  'Privacy Policy . terms of service ',
                  style: TextStyle(
                      color: const Color.fromARGB(114, 255, 255, 255)),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
