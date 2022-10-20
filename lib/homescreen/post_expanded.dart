import 'package:clique_app/commonwidgets/post_expanded_widgets.dart';
import 'package:clique_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import 'package:clique_app/constants.dart';

class PostExpanded extends StatefulWidget {
  const PostExpanded({Key? key}) : super(key: key);

  @override
  State<PostExpanded> createState() => _PostExpandedState();
}

class _PostExpandedState extends State<PostExpanded> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.graniteBlack,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                  bottom: -130,
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: AppColors.springTeal,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(50))),
                  )),
              Hero(
                tag: "postone",
                child: Container(
                    clipBehavior: Clip.hardEdge,
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(50))),
                    child: Image.asset(
                      "assets/posts/postone.jpg",
                      fit: BoxFit.fill,
                    )),
              ),
              Positioned(
                  top: 20,
                  child: Row(
                    children: [
                      InkWell(
                        child: Icon(
                          UniconsLine.arrow_left,
                          color: Colors.white,
                          size: 40,
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Viewing post",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  )),
              Positioned(
                top: 20,
                right: 10,
                child: Icon(
                  UniconsLine.ellipsis_v,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              Positioned(
                  bottom: -120,
                  left: 10,
                  right: 10,
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Username",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          "Likers",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        Expanded(
                            child: ListView.builder(
                                itemCount: 4,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, ind) {
                                  return Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      radius: 10,
                                    ),
                                  );
                                }))
                      ],
                    ),
                  )),
            ],
          ),
         Container(
           height: MediaQuery.of(context).size.height/2.5,
           margin: EdgeInsets.only(top: 120),
           color: Colors.transparent,
           child: ListView.builder(
             scrollDirection: Axis.vertical,
             shrinkWrap: true,
               itemCount: 6,
               itemBuilder: (context, ind){
             return singlePost();
           }),
         ),
          SizedBox(
            height: 90,
            width: 1000,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      hintStyle: TextStyle(color: Colors.black),
                      hintText: "Add a comment",
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        UniconsLine.user_circle,
                        color: Colors.black,
                      ),
                      suffixIcon: Icon(
                        UniconsLine.smile_beam,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ))),
            ),
          )
        ],
      ),
    );
  }
}
