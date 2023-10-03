// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../assets/colorconstant.dart';
import '../../../assets/thumbnail.dart';

class MaxPlayerVideoscreen extends StatefulWidget {
  const MaxPlayerVideoscreen({
    super.key,
    required this.videoCardstrings,
    required this.videoCardicon,
    required this.videotappedindex,
  });

  final List<String> videoCardstrings;
  final List videoCardicon;
  final int videotappedindex;

  @override
  State<MaxPlayerVideoscreen> createState() => _MaxPlayerVideoscreenState();
}

class _MaxPlayerVideoscreenState extends State<MaxPlayerVideoscreen> {
  List youtubevideolink = [
    '_MhJRKJ-fhk',
    '3oNB6ZO7AtY',
    'HZ1l3xmfN-Q',
    'uusHVZGujbU'
  ];
  bool ontapped = false;
  var selectedVideo = 0;
  @override
  Widget build(BuildContext context) {
    YoutubePlayerController ytcontroller = YoutubePlayerController(
      initialVideoId: youtubevideolink[widget.videotappedindex],
      flags: YoutubePlayerFlags(
        showLiveFullscreenButton: true,
        autoPlay: false,
      ),
    );
    return Container(
      color: darkcolor,
      child: Column(
        children: [
          Wrap(
            children: [
              SizedBox(
                height: 250,
                child: YoutubePlayer(
                  progressColors:
                      ProgressBarColors(backgroundColor: youtubegrey),
                  progressIndicatorColor: Colors.black,
                  showVideoProgressIndicator: true,
                  controller: ytcontroller,
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Video Title Goes Here',
                          style: TextStyle(color: lightcolor, fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          'No.Of views & Time',
                          style: TextStyle(color: Colors.white54),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            '...more',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Username',
                              style: TextStyle(
                                  color: lightcolor,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Sub Count',
                              style: TextStyle(color: Colors.white54),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                          width: 60,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            color: youtubegrey,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.notifications_none_outlined,
                                    color: lightcolor,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: lightcolor,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 30,
                      width: 411,
                      child: ListView.separated(
                        separatorBuilder: (context, index) => SizedBox(
                          width: 10,
                        ),
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.videoCardstrings.length,
                        itemBuilder: (BuildContext context, int index) {
                          if (index == 0) {
                            return Container(
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  color: youtubegrey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.thumb_up_alt_outlined,
                                    color: lightcolor,
                                    size: 17,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '|',
                                    style: TextStyle(
                                        color: Colors.white54, fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Likes',
                                    style: TextStyle(color: lightcolor),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '|',
                                    style: TextStyle(
                                        color: Colors.white54, fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.thumb_down_alt_outlined,
                                    color: lightcolor,
                                    size: 17,
                                  ),
                                ],
                              ),
                            );
                          } else {
                            return Container(
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  color: youtubegrey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Row(
                                children: [
                                  Icon(
                                    widget.videoCardicon[index],
                                    color: lightcolor,
                                    size: 17,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    widget.videoCardstrings[index],
                                    style: TextStyle(color: lightcolor),
                                  ),
                                ],
                              ),
                            );
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 90,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: youtubegrey,
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Comments',
                                  style: TextStyle(
                                      color: lightcolor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 17,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                    height: 30,
                                    width: 310,
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintStyle: TextStyle(
                                              color: const Color.fromARGB(
                                                  127, 255, 255, 255)),
                                          filled: true,
                                          fillColor:
                                              Color.fromARGB(255, 70, 67, 67),
                                          contentPadding: EdgeInsets.only(
                                              top: 10, left: 10),
                                          hintText: 'Add a Comment...',
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius:
                                                  BorderRadius.circular(20))),
                                    )),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: mythumbnail.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Container(
                              height: 250,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: NetworkImage(mythumbnail[index]),
                              )),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                              ),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                radius: 25,
                              ),
                              title: Text(
                                'VIDEO TITLE GOES HERE',
                                style: TextStyle(
                                  color: lightcolor,
                                ),
                              ),
                              subtitle: Text(
                                'Channel Name •  views • TIME',
                                style: TextStyle(
                                    color: const Color.fromARGB(
                                        111, 255, 255, 255)),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
