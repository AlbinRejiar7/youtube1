import 'package:flutter/material.dart';
import 'package:youtube/Widgets/search.dart';
import 'package:youtube/assets/shortsimages.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ShortsPage extends StatefulWidget {
  const ShortsPage({super.key});

  @override
  State<ShortsPage> createState() => _ShortsPageState();
}

class _ShortsPageState extends State<ShortsPage> {
  @override
  Widget build(BuildContext context) {
    List<String> videoUrl = [
      'ZiYUZVqSNj4',
      'VP8J4po2T-s',
      'mMtDiS89evs',
      'e50PZ23653A',
      'mAcDM5PWEfA',
    ];
    List<IconData> myicons = [
      Icons.thumb_up,
      Icons.thumb_down,
      Icons.comment,
      Icons.share,
      Icons.sync_outlined,
    ];

    List myiconsstring = [
      '346',
      'Dislike',
      '34',
      'Share',
      'Remix',
    ];
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchButt(),
                  ));
            },
            icon: const Icon(Icons.search),
          ),
          const SizedBox(
            width: 15,
          ),
          const Icon(Icons.camera_alt_outlined),
          const SizedBox(
            width: 15,
          ),
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      padding: const EdgeInsets.all(10),
                      height: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Morevertbottomsheet(
                              text: 'Description',
                              myicon: const Icon(Icons.notes)),
                          Morevertbottomsheet(
                              text: 'Save to play list',
                              myicon: const Icon(Icons.library_add_outlined)),
                          Morevertbottomsheet(
                              text: 'Captions',
                              myicon: const Icon(Icons.subtitles)),
                          Morevertbottomsheet(
                              text: 'Dont Recomend this channel',
                              myicon: const Icon(Icons.not_interested)),
                          Morevertbottomsheet(
                              text: 'Report',
                              myicon: const Icon(Icons.flag_outlined)),
                          Morevertbottomsheet(
                              text: 'Send Feedback',
                              myicon: const Icon(Icons.feedback_outlined)),
                        ],
                      ),
                    );
                  },
                );
              },
              icon: const Icon(Icons.more_vert)),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Shorts',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: PageView.builder(
        itemCount: myimages.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: YoutubePlayer(
                  controller: YoutubePlayerController(
                    initialVideoId: videoUrl[index],
                    flags: const YoutubePlayerFlags(
                      autoPlay: true,
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: MediaQuery.of(context).size.width * 0.15,
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Icon(
                                    myicons[index],
                                    size: 35,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '${myiconsstring[index]}',
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 25,
                          ),
                          const Text(
                            '@username',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 25,
                            width: 90,
                            decoration: const BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3))),
                            child: const Center(
                              child: Text(
                                'Subscribe',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 100, top: 20),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                  color: Colors.greenAccent,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(3))),
                            ),
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 6),
                        child: Row(
                          children: [
                            Text(
                              'VIDEO TITLE GOES HERE',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

// ignore: must_be_immutable
class Morevertbottomsheet extends StatelessWidget {
  String? text;
  Icon myicon;
  Morevertbottomsheet({
    super.key,
    required this.text,
    required this.myicon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        myicon,
        const SizedBox(
          width: 30,
        ),
        Text('$text'),
      ],
    );
  }
}
