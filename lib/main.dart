import 'package:flutter/material.dart';
import './top_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          headline6: TextStyle(color: Colors.white),
        ),
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget featPerf(String text, Size mediaQuery) {
    return Row(
      children: [
        SizedBox(
          width: mediaQuery.width * 0.1,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              mediaQuery.width * 0.015,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
              mediaQuery.width * 0.015,
            ),
            child: Image.asset(
              'asset/prof_pic.png',
              height: mediaQuery.height * 0.13,
            ),
          ),
        ),
        SizedBox(
          width: mediaQuery.width * 0.1,
        ),
        SizedBox(
          width: mediaQuery.width * 0.45,
          child: Text(
            text,
            softWrap: true,
            overflow: TextOverflow.fade,
            style: TextStyle(
              fontSize: mediaQuery.width * 0.045,
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }

  Widget clanActi(String text, Size mediaQuery) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 2 / 1,
          child: Image.asset(
            'asset/battlefield.png',
            width: double.infinity,
          ),
        ),
        Positioned(
            top: mediaQuery.height * 0.07,
            left: mediaQuery.width * 0.28,
            child: SizedBox(
              width: mediaQuery.width * 0.45,
              child: Text(
                text,
                softWrap: true,
                overflow: TextOverflow.fade,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: mediaQuery.width * 0.053,
                  color: Color.fromARGB(255, 2, 29, 169),
                ),
              ),
            ))
      ],
    );
  }

  Widget clanDis(String header, String numberUnread, Size mediaQuery) {
    return Padding(
      padding: EdgeInsets.only(
        left: mediaQuery.width * 0.1,
        right: mediaQuery.width * 0.07,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            header,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: mediaQuery.width * 0.045, color: Colors.red),
          ),
          SizedBox(
            height: mediaQuery.height * 0.003,
          ),
          Text(
            numberUnread,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: mediaQuery.width * 0.045, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget clanMem(String text, String image, Size mediaQuery) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.08),
      child: ListTile(
        leading: CircleAvatar(
          radius: mediaQuery.width * 0.08,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(mediaQuery.height),
            child: Image.asset(
              image,
            ),
          ),
        ),
        title: Text(
          text,
          style: TextStyle(
            color: Colors.red,
            fontSize: mediaQuery.width * 0.045,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        bottomNavigationBar:
//......The tabs
            const TabBar(
          tabs: [
            Tab(
              icon: Icon(
                Icons.home,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.star_border,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.leaderboard,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.group_sharp,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.face_sharp,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: mediaQuery.height * 0.025,
                ),

//........................Image at the top
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.03),
                  child: TopImage(),
                ),

//.........................Divider
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.06),
                  child: Divider(
                    height: mediaQuery.height * 0.06,
                    thickness: mediaQuery.width * 0.01,
                    color: Colors.white,
                  ),
                ),
//......................Achievements
                Text(
                  'Achievements',
                  style: TextStyle(
                    fontSize: mediaQuery.width * 0.056,
                    color: Color(0xffffdd017),
                  ),
                ),
                // SizedBox(
                //   height: mediaQuery.height * 0.1,
                // ),
//...................."Current league"
                Row(
                  children: [
                    SizedBox(
                      width: mediaQuery.width * 0.08,
                    ),
                    Text(
                      'Current league',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: mediaQuery.width * 0.05,
                      ),
                    ),
                    SizedBox(
                      width: mediaQuery.width * 0.2,
                    ),
                    Image.asset(
                      'asset/shield.png',
                      height: mediaQuery.height * 0.2,
                    ),
                  ],
                ),
//..............."League Ranking"
                Row(
                  children: [
                    SizedBox(
                      width: mediaQuery.width * 0.08,
                    ),
                    Text(
                      'League Ranking',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: mediaQuery.width * 0.05,
                      ),
                    ),
                    SizedBox(
                      width: mediaQuery.width * 0.28,
                    ),
                    Text(
                      '11th',
                      style: TextStyle(
                          color: Color(0xffffdd017),
                          fontSize: mediaQuery.width * 0.08),
                    ),
                  ],
                ),
                SizedBox(
                  height: mediaQuery.height * 0.07,
                ),
//............."Experience"
                Row(
                  children: [
                    SizedBox(
                      width: mediaQuery.width * 0.08,
                    ),
                    Text(
                      'Experience',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: mediaQuery.width * 0.05,
                      ),
                    ),
                    SizedBox(
                      width: mediaQuery.width * 0.36,
                    ),
                    Text(
                      '2000 xp',
                      style: TextStyle(
                          color: Color(0xffffdd017),
                          fontSize: mediaQuery.width * 0.065),
                    ),
                  ],
                ),
                SizedBox(
                  height: mediaQuery.height * 0.07,
                ),
//................"# of wins"
                Row(
                  children: [
                    SizedBox(
                      width: mediaQuery.width * 0.08,
                    ),
                    Text(
                      '# of wins',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: mediaQuery.width * 0.05,
                      ),
                    ),
                    SizedBox(
                      width: mediaQuery.width * 0.48,
                    ),
                    Text(
                      '3',
                      style: TextStyle(
                          color: Color(0xffffdd017),
                          fontSize: mediaQuery.width * 0.065),
                    ),
                  ],
                ),

//.......................Divider
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.06),
                  child: Divider(
                    height: mediaQuery.height * 0.045,
                    thickness: mediaQuery.width * 0.01,
                    color: Colors.white,
                  ),
                ),
//.............."Past featured........."
                Text(
                  'Past featured performances',
                  style: TextStyle(
                    fontSize: mediaQuery.width * 0.056,
                    color: Color(0xffffdd017),
                  ),
                ),
                SizedBox(
                  height: mediaQuery.height * 0.04,
                ),
                featPerf('Priya in international debating league', mediaQuery),
                SizedBox(
                  height: mediaQuery.height * 0.03,
                ),
                featPerf('Akshay in global quizzing finals', mediaQuery),
                SizedBox(
                  height: mediaQuery.height * 0.023,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See more',
                    style: TextStyle(
                      fontSize: mediaQuery.width * 0.036,
                      color: Color(0xffffdd017),
                    ),
                  ),
                ),

//.......................Divider
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.06),
                  child: Divider(
                    height: mediaQuery.height * 0.045,
                    thickness: mediaQuery.width * 0.01,
                    color: Colors.white,
                  ),
                ),
//................."Live clan..............."
                Text(
                  'Live clan activities on platform',
                  style: TextStyle(
                    fontSize: mediaQuery.width * 0.056,
                    color: Color(0xffffdd017),
                  ),
                ),

                SizedBox(
                  height: mediaQuery.height * 0.02,
                ),
                // SizedBox(
                //   height: mediaQuery.height * 0.02,
                // ),
                clanActi('Live trading championship', mediaQuery),
                clanActi('Treasure hunt', mediaQuery),

                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See more',
                    style: TextStyle(
                      fontSize: mediaQuery.width * 0.036,
                      color: const Color(0xffffdd017),
                    ),
                  ),
                ),
                //.......................Divider
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.06),
                  child: Divider(
                    height: mediaQuery.height * 0.045,
                    thickness: mediaQuery.width * 0.01,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: mediaQuery.height * 0.02,
                ),

//................."Clan discussions"
                Text(
                  'Clan discussions',
                  style: TextStyle(
                    fontSize: mediaQuery.width * 0.056,
                    color: Color(0xffffdd017),
                  ),
                ),

                SizedBox(
                  height: mediaQuery.height * 0.03,
                ),

                clanDis(
                  "General thread:",
                  "This is a very long and random text which is being used to test the working of this feature.",
                  mediaQuery,
                ),

                SizedBox(
                  height: mediaQuery.height * 0.025,
                ),

                clanDis(
                  "(live)Another very long and random text which is being used as a replacement of the discussions.",
                  "10 unread messages",
                  mediaQuery,
                ),

                SizedBox(
                  height: mediaQuery.height * 0.025,
                ),

                clanDis(
                  "(live)Yet again a very long line but here it is being used to replace a question asked by someone.",
                  "10 unread messages",
                  mediaQuery,
                ),

                SizedBox(
                  height: mediaQuery.height * 0.02,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See more',
                    style: TextStyle(
                      fontSize: mediaQuery.width * 0.036,
                      color: const Color(0xffffdd017),
                    ),
                  ),
                ),

//.......................Divider
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.06),
                  child: Divider(
                    height: mediaQuery.height * 0.038,
                    thickness: mediaQuery.width * 0.01,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: mediaQuery.height * 0.02,
                ),
//.............."Clan members"
                Text(
                  'Clan members',
                  style: TextStyle(
                    fontSize: mediaQuery.width * 0.056,
                    color: Color(0xffffdd017),
                  ),
                ),
                SizedBox(
                  height: mediaQuery.height * 0.03,
                ),
                clanMem(
                    "Lorem ipsum - Clan head", "asset/person2.png", mediaQuery),
                SizedBox(
                  height: mediaQuery.height * 0.02,
                ),
                clanMem("Lorem ipsum - Debating sensei", "asset/person1.png",
                    mediaQuery),

                SizedBox(
                  height: mediaQuery.height * 0.015,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See more',
                    style: TextStyle(
                      fontSize: mediaQuery.width * 0.036,
                      color: const Color(0xffffdd017),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
