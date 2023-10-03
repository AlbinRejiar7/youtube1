import 'package:flutter/material.dart';
import 'package:youtube/Widgets/mybottom_navigationbar.dart';
import 'package:youtube/Widgets/search.dart';
import 'package:youtube/assets/colorconstant.dart';

import '../bottomnavigationpages/home_page.dart';
import '../bottomnavigationpages/library_page.dart';
import '../bottomnavigationpages/shorts_page.dart';
import '../bottomnavigationpages/subscription_page.dart';

class YourChannel extends StatefulWidget {
  const YourChannel({super.key});

  @override
  State<YourChannel> createState() => _YourChannelState();
}

class _YourChannelState extends State<YourChannel> {
  bool istapped = false;
  int _currindex = 0;
  List bottompages = [
    const Bodyhomepage(),
    const ShortsPage(),
    null,
    const Subscription(),
    const Librarypage(),
  ];
  List<String> mythumbnail = [
    "https://img.freepik.com/free-vector/fashion-vlogger-youtube-thumbnail-template_23-2148708751.jpg?size=626&ext=jpg&ga=GA1.2.1003115401.1692644975&semt=ais",
    "https://img.freepik.com/free-vector/travel-youtube-thumbnail_23-2148561450.jpg?size=626&ext=jpg&ga=GA1.2.1003115401.1692644975&semt=ais",
    "https://img.freepik.com/premium-vector/abstract-business-youtube-thumbnail_23-2148918587.jpg?size=626&ext=jpg&ga=GA1.2.1003115401.1692644975&semt=ais",
    "https://img.freepik.com/free-vector/modern-youtube-thumbnail-with-comic-art-background_1361-2738.jpg?size=626&ext=jpg&ga=GA1.2.1003115401.1692644975&semt=ais",
    "https://img.freepik.com/premium-psd/youtube-thumbnail-web-banner-template-review-any-products_633645-89.jpg?size=626&ext=jpg&ga=GA1.2.1003115401.1692644975&semt=ais",
    "https://img.freepik.com/free-vector/fashion-vlogger-youtube-thumbnail-template_23-2148708751.jpg?size=626&ext=jpg&ga=GA1.2.1003115401.1692644975&semt=ais",
    "https://img.freepik.com/free-vector/travel-youtube-thumbnail_23-2148561450.jpg?size=626&ext=jpg&ga=GA1.2.1003115401.1692644975&semt=ais",
    "https://img.freepik.com/premium-vector/abstract-business-youtube-thumbnail_23-2148918587.jpg?size=626&ext=jpg&ga=GA1.2.1003115401.1692644975&semt=ais",
    "https://img.freepik.com/free-vector/fashion-vlogger-youtube-thumbnail-template_23-2148708751.jpg?size=626&ext=jpg&ga=GA1.2.1003115401.1692644975&semt=ais",
    "https://img.freepik.com/free-vector/travel-youtube-thumbnail_23-2148561450.jpg?size=626&ext=jpg&ga=GA1.2.1003115401.1692644975&semt=ais",
    "https://img.freepik.com/premium-vector/abstract-business-youtube-thumbnail_23-2148918587.jpg?size=626&ext=jpg&ga=GA1.2.1003115401.1692644975&semt=ais",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: istapped
          ? bottompages[_currindex]
          : Column(
              children: [
                AppBar(
                  automaticallyImplyLeading: true,
                  backgroundColor: Colors.black,
                  actions: [
                    const Icon(Icons.cast),
                    const SizedBox(
                      width: 15,
                    ),
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
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.more_vert)),
                  ],
                  elevation: 0,
                  title: const Text(
                    'Username',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.green[800],
                        child: const Text(
                          'A',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'NAME',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        '@username SubscriberCount VideoCount',
                        style: TextStyle(
                          color: Color.fromARGB(166, 255, 255, 255),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'More about channel >',
                        style: TextStyle(
                          color: Color.fromARGB(110, 255, 255, 255),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: MediaQuery.sizeOf(context).height * 0.05,
                            width: MediaQuery.sizeOf(context).width * 0.7,
                            decoration: BoxDecoration(
                                color: youtubegrey,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                'Manage Videos',
                                style: TextStyle(
                                    color: lightcolor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: youtubegrey,
                            child: Icon(
                              Icons.graphic_eq,
                              color: lightcolor,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: youtubegrey,
                            child: Icon(
                              Icons.edit_outlined,
                              color: lightcolor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: DefaultTabController(
                    length: 4,
                    child: Scaffold(
                      backgroundColor: darkcolor,
                      body: Column(
                        children: [
                          const TabBar(
                            labelPadding: EdgeInsets.only(
                                bottom: 10, right: 15, left: 10),
                            indicatorColor: Colors.white,
                            isScrollable: true,
                            labelStyle: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                            unselectedLabelColor:
                                Color.fromARGB(255, 204, 203, 203),
                            labelColor: Colors.white,
                            tabs: [
                              Text("Home"),
                              Text("Playlists"),
                              Text("Channels"),
                              Text("About"),
                            ],
                          ),
                          Expanded(
                            child: TabBarView(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 240,
                                      width: 300,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                "assets/images/home_img.png")),
                                      ),
                                    ),
                                    const Text(
                                      'Create a video',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Text(
                                      'Share it with anyone or everyone.\n   Public videos will appear here.',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 17,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: Container(
                                        height: 40,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(200)),
                                        child: const Center(
                                          child: Text(
                                            "Create",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                //playlist
                                SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.sort,
                                              color: Colors.grey,
                                              size: 30,
                                            ),
                                            Text(
                                              "  Sort by ",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                            ),
                                            Icon(
                                              Icons.expand_more,
                                              color: Colors.grey,
                                              size: 30,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height,
                                        child: ListView.builder(
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            itemCount: mythumbnail.length,
                                            itemBuilder: (context, index) {
                                              return Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8.0),
                                                child: ListTile(
                                                  leading: Container(
                                                    height: 350,
                                                    width: 120,
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: NetworkImage(
                                                              mythumbnail[
                                                                  index]),
                                                        ),
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(6)),
                                                  ),
                                                  title: const Text(
                                                    "Playlist name",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20),
                                                  ),
                                                  subtitle: const Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Private",
                                                        style: TextStyle(
                                                            color: Colors.grey),
                                                      ),
                                                    ],
                                                  ),
                                                  trailing: const Column(
                                                    children: [
                                                      Icon(
                                                        Icons.more_vert,
                                                        color: Colors.white,
                                                        size: 18,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            }),
                                      )
                                    ],
                                  ),
                                ),
                                //channel
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 300,
                                      width: 300,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/channel.png"),
                                      )),
                                    ),
                                    const Text(
                                      "This channel doesn't feature any other channels.",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                //abt
                                const Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            "More info",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.language_outlined,
                                            color: Colors.grey,
                                            size: 25,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            "http://www.youtube.com\n/@username",
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.info_outline,
                                            color: Colors.grey,
                                            size: 30,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            "Joined 14-Jun-2016",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
      bottomNavigationBar: MyBottomNav(onItemTapped: (index) {
        setState(() {
          _currindex = index;
          istapped = true;
        });
      }),
    );
  }
}
