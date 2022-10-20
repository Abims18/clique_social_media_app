import 'package:clique_app/homescreen/post_expanded.dart';
import 'package:flutter/material.dart';

import '../commonwidgets/home_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            topBar(),
            storiesArea(),
            Expanded(child: ListView.builder(
              itemCount: posts.length,
                itemBuilder: (context, ind){
              return Column(
                children: [
                  InkWell(
                      child: singlePost(posts[ind], users[ind], postDesc[ind], likes[ind], comments[ind]),
                    onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PostExpanded()));
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 22.0, right: 22, top: 10, bottom: 10),
                    child: Divider(
                      height: 2,
                      color: Colors.grey[300],
                      thickness: 2,
                    ),
                  ),
                ],
              );
            }
            )),
            SizedBox(height: 100,)
          ],
        ),
      )
    );
  }
}

List<String> posts = [
  "postone.jpg",
  "posttwo.jpg",
  "postthree.jpg",
  "postfour.jpg"
];

List<String> users = [
  "NeonGamer",
  "TravelFreak",
      "John Foster",
      "Joe Bieden"
];


List<String> postDesc = [
  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rhoncus interdum massa",
  "Nam dictum urna vel dapibus feugiat. Etiam maximus nibh ut elit facilisis tempus. Vivamus auctor massa lectus, eu finibus nibh posuere id",
  "quis dignissim metus finibus at. Fusce sagittis metus neque. Mauris porttitor pretium nisi in condimentum. Duis tincidunt vitae elit eget sollicitudin",
  "sem blandit egestas pellentesque, risus tortor pulvinar erat, a pharetra est urna non lectus. Nam consequat ipsum vitae congue auctor."
];

List<int> likes = [
  113,
  100,
  87,
  10
];

List<int> comments = [
  10,
  20,
  12,
  15
];




