import 'package:flutter/material.dart';
import 'package:youtube/assets/colorconstant.dart';

import '../../../assets/shortsimages.dart';
import '../../../assets/thumbnail.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkcolor,
      appBar: AppBar(
        backgroundColor: darkcolor,
        title: Text('History',
            style: TextStyle(
              color: lightcolor,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: youtubegrey,
                prefixIcon: Icon(Icons.search),
                prefixIconColor: Colors.grey,
                hintText: "Search watch history",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
              ),
              cursorColor: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 20, bottom: 15),
              child: Text(
                "Today",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                    scale: 5,
                    color: lightcolor,
                    'assets/images/YouTube_Shorts_29-OUTLINED.png'),
                SizedBox(
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
            SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: myimages.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover, image: myimages[index]),
                          borderRadius: BorderRadius.circular(10)),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'PUBG#1\n5.6M views',
                            style: TextStyle(
                                color: lightcolor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: mythumbnail.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: ListTile(
                        leading: Container(
                          height: 350,
                          width: 120,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(mythumbnail[index]),
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6)),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 5.0, bottom: 5),
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 1),
                                height: 20,
                                width: 35,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(3)),
                                child: Center(
                                  child: Text(
                                    "3:29",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        title: Text(
                          "YouTube Video Caption| YouTube Video Caption | ",
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Channel name",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              ' lakh views',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        trailing: Column(
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
    );
  }
}
