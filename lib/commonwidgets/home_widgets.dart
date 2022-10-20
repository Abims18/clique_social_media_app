import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

Widget topBar() {
  return Padding(
    padding: const EdgeInsets.all(18.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            Icon(
              UniconsLine.bars,
              size: 36,
            ),
            SizedBox(width: 20),
            Text(
              "My Feed",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ],
        ),
        const Icon(
          Icons.chat_bubble_outline,
          size: 36,
        )
      ],
    ),
  );
}

Widget storiesArea() {
  return Padding(
    padding: const EdgeInsets.only(left: 12.0),
    child: Container(
      width: double.infinity,
      height: 110,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 34,
                backgroundColor: Colors.teal,
                child: Icon(
                  UniconsLine.camera_plus,
                  color: Colors.white,
                ),
              ),
              Text(
                "Add",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Expanded(child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
              itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 34,
                        backgroundColor: Colors.teal,
                      ),
                      Text("Username", style: TextStyle(color: Colors.black),)
                    ],
                  ),
                ),

              ],
            );
          }))
        ],
      ),
    ),
  );
}

Widget singlePost(String imageLoc, String username, String postDesc, int likeCount, int comment){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Hero(
        tag: "post",
        child: Container(
          margin: EdgeInsets.all(12),
          width: double.infinity,
          color: Colors.transparent,
          child: Card(
            elevation: 24,
              clipBehavior: Clip.hardEdge,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32)
              ),
              child: Image.asset("assets/posts/$imageLoc", fit: BoxFit.fill,)),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 22.0, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(username, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            Row(
              children: [
                Icon(UniconsLine.heart),
                Text("$likeCount"),
                SizedBox(width: 20),
                Icon(UniconsLine.comment),
                Text("$comment")
              ],
            )
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 20),
        child: Text(postDesc),
      )

     
    ],
  );
}
