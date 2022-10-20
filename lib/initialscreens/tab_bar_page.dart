import 'package:clique_app/constants.dart';
import 'package:clique_app/homescreen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:rounded_tabbar_widget/rounded_tabbar_widget.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RoundedTabbarWidget(
        itemNormalColor: Colors.white,
        itemSelectedColor: Colors.black,
        tabBarBackgroundColor: AppColors.springTeal,
        tabIcons: const [
          Icons.home,
          Icons.search,
          Icons.favorite,
          Icons.person,
        ],
        pages: [
          HomeScreen(),
          SearchPageWidget(),
          NotificationPageWidget(),
          ProfilePageWidget(),
        ],
        selectedIndex: 0,
        onTabItemIndexChanged: (int index) {
          print('Index: $index');
        },
      ),
    );
  }
}


Widget HomePageWidget(){
  return const Center(
    child: Text("HomePage"),
  );
}

Widget SearchPageWidget(){
  return const Center(
    child: Text("Search Page"),
  );
}
Widget NotificationPageWidget(){
  return const Center(
    child: Text("Notification"),
  );
}
Widget ProfilePageWidget(){
  return const Center(
    child: Text("Profile"),
  );
}