import 'package:flutter/material.dart';
import 'package:miniplayer/miniplayer.dart';
import 'package:youtube/Widgets/drawer.dart';
import 'package:youtube/Widgets/myappbar.dart';
import 'package:youtube/assets/colorconstant.dart';
import 'package:youtube/assets/thumbnail.dart';

import '../../../assets/shortsimages.dart';
import '../videoscreen/video_Player_screen.dart';

class Bodyhomepage extends StatefulWidget {
  const Bodyhomepage({super.key});

  @override
  State<Bodyhomepage> createState() => _BodyhomepageState();
}

class _BodyhomepageState extends State<Bodyhomepage> {
  int videoscreentappedindex = 0;
  bool buttonPressed = false;
  int tappedindex = 0;
  bool isvideoTapped = true;
  final MiniplayerController _miniplayerController = MiniplayerController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> videoCardstrings = [
    '',
    'Share',
    'Remix',
    'Stop ads',
    'Thanks',
    'Clips',
    'Save',
  ];
  List videoCardicon = [
    '',
    Icons.shortcut_sharp,
    Icons.offline_bolt_outlined,
    Icons.block,
    Icons.favorite_outline_rounded,
    Icons.cut,
    Icons.library_add_outlined,
  ];
  List<String> text = [
    '',
    'All',
    'Gaming',
    'Live',
    'BGMI',
    'Valorent',
    'News',
    'Music',
    'Mixes',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkcolor,
      drawer: const Mydrawer(),
      key: _scaffoldKey,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const MyAppbar(),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: text.length,
                      itemBuilder: (BuildContext context, int index) {
                        if (index == 0) {
                          return Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              width: 50,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 43, 37, 37),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(3))),
                              child: Center(
                                child: InkWell(
                                  onTap: () {
                                    _scaffoldKey.currentState?.openDrawer();
                                  },
                                  child: Icon(
                                    Icons.explore_outlined,
                                    color: lightcolor,
                                  ),
                                ),
                              ),
                            ),
                          );
                        } else if (index == text.length - 1) {
                          return TextButton(
                              onPressed: () {},
                              child: const Text('Send feedback'));
                        } else {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                buttonPressed = true;
                                tappedindex = index;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                decoration: BoxDecoration(
                                    color: buttonPressed && tappedindex == index
                                        ? Colors.white
                                        : const Color(0xff272727),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(7))),
                                child: Center(
                                    child: Text(
                                  text[index],
                                  style: TextStyle(
                                      color:
                                          buttonPressed && tappedindex == index
                                              ? Colors.black
                                              : Colors.white),
                                )),
                              ),
                            ),
                          );
                        }
                      }),
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                          scale: 5,
                          color: lightcolor,
                          'assets/images/YouTube_Shorts_29-OUTLINED.png'),
                      const SizedBox(
                        width: 15,
                      ),
                      Text('Shorts',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: lightcolor,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: myimages.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover, image: myimages[index]),
                              borderRadius: BorderRadius.circular(10)),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'PUBG#1\n5.6M views',
                                style: TextStyle(
                                    color: lightcolor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: mythumbnail.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          isvideoTapped = false;
                          videoscreentappedindex = index;
                          _miniplayerController.animateToHeight(
                            state: PanelState.MAX,
                          );
                        });
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 250,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: NetworkImage(mythumbnail[index]),
                            )),
                            child: const Align(
                              alignment: Alignment.bottomLeft,
                            ),
                          ),
                          ListTile(
                            leading: const CircleAvatar(
                              radius: 25,
                            ),
                            title: Text(
                              'VIDEO TITLE GOES HERE',
                              style: TextStyle(
                                color: lightcolor,
                              ),
                            ),
                            subtitle: const Text(
                              'Channel Name •  views • TIME',
                              style: TextStyle(
                                  color: Color.fromARGB(111, 255, 255, 255)),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Offstage(
            offstage: isvideoTapped,
            child: Miniplayer(
                controller: _miniplayerController,
                minHeight: 70,
                maxHeight: MediaQuery.of(context).size.height,
                builder: (height, percentage) {
                  if (height > 254) {
                    return MaxPlayerVideoscreen(
                      videoCardstrings: videoCardstrings,
                      videoCardicon: videoCardicon,
                      videotappedindex: videoscreentappedindex,
                    );
                  } else {
                    return Container(
                      color: darkcolor,
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    height: height - 4,
                                    width: height,
                                    child: Image.network(
                                        fit: BoxFit.cover,
                                        mythumbnail[videoscreentappedindex]),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(11),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Video Title goes here',
                                          style: TextStyle(color: lightcolor),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const Text(
                                          'Username',
                                          style:
                                              TextStyle(color: Colors.white54),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _miniplayerController.animateToHeight(
                                          state: PanelState.MAX,
                                        );
                                      });
                                    },
                                    icon: Icon(Icons.play_arrow,
                                        color: lightcolor)),
                                IconButton(
                                    onPressed: () {
                                      isvideoTapped = true;
                                      setState(() {});
                                    },
                                    icon: Icon(Icons.close, color: lightcolor))
                              ],
                            ),
                          ),
                          const LinearProgressIndicator(
                            value: 0.4,
                            valueColor: AlwaysStoppedAnimation(Colors.red),
                          )
                        ],
                      ),
                    );
                  }
                }),
          ),
        ],
      ),
    );
  }
}
