import 'package:flutter/material.dart';
import 'package:youtube/assets/colorconstant.dart';

class MyBottomNav extends StatefulWidget {
  final Function(int) onItemTapped;
  const MyBottomNav({
    super.key,
    required this.onItemTapped,
  });

  @override
  State<MyBottomNav> createState() => _MyBottomNavState();
}

class _MyBottomNavState extends State<MyBottomNav> {
  int _currindex = 0;

  List<String> createStrings = [
    'Create a Short',
    'Upload a video',
    'Go live',
    'Create a post',
  ];
  List<Icon> myIcons = [
    const Icon(
      Icons.show_chart_sharp,
      color: Colors.white,
    ),
    const Icon(
      Icons.upload,
      color: Colors.white,
    ),
    const Icon(
      Icons.wifi,
      color: Colors.white,
    ),
    const Icon(
      Icons.note_add,
      color: Colors.white,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: _onItemTapped,
        selectedFontSize: 11,
        unselectedFontSize: 11,
        unselectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currindex,
        items: [
          BottomNavigationBarItem(
              icon: _currindex == 0
                  ? Image.asset(
                      color: Colors.white, 'assets/images/homepagefilled.png')
                  : Image.asset(
                      scale: 25,
                      color: Colors.white,
                      'assets/images/homehut.png'),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: _currindex == 1
                  ? Image.asset(
                      height: 20,
                      color: Colors.white,
                      'assets/images/youtube-shorts-logo-filled.png')
                  : Image.asset(
                      height: 20,
                      color: Colors.white,
                      'assets/images/YouTube_Shorts_29-OUTLINED.png'),
              label: 'Shorts'),
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          height: 400,
                          color: const Color(0xff202021),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text('Create',
                                        style: TextStyle(
                                            fontSize: 25, color: Colors.white)),
                                    IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: const Icon(
                                        Icons.close,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 4,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            CircleAvatar(
                                              backgroundColor:
                                                  const Color(0xff393938),
                                              radius: 30,
                                              child: myIcons[index],
                                            ),
                                            const SizedBox(
                                              width: 30,
                                            ),
                                            Text(
                                              createStrings[index],
                                              style: const TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  icon: Image.asset(
                    'assets/images/add-button.png',
                    color: lightcolor,
                  )),
              label: ''),
          BottomNavigationBarItem(
              icon: _currindex == 3
                  ? const Icon(
                      Icons.subscriptions,
                    )
                  : const Icon(
                      Icons.subscriptions_outlined,
                    ),
              label: 'Subscriptions'),
          BottomNavigationBarItem(
              icon: _currindex == 4
                  ? const Icon(
                      Icons.video_library,
                    )
                  : const Icon(
                      Icons.video_library_outlined,
                    ),
              label: 'Library'),
        ]);
  }

  void _onItemTapped(int index) {
    setState(() {
      _currindex = index;
    });
    widget.onItemTapped(index);
  }
}
