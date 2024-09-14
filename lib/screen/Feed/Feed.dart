import 'package:floating_navbar/floating_navbar_item.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/material.dart';
import 'package:relax/screen/Feed/Comp/Feed_body.dart';
import 'package:floating_navbar/floating_navbar.dart';
import 'package:relax/screen/graph.dart';
import 'package:relax/screen/saved.dart';
import 'package:relax/screen/profile.dart';
import 'package:page_transition/page_transition.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      //body: FeedBody(),

      bottomNavigationBar:
    FloatingNavBar(
    resizeToAvoidBottomInset: false,
    color: Colors.black,
    selectedIconColor: Colors.white,
    unselectedIconColor: Colors.white.withOpacity(0.6),
    items: [
     FloatingNavBarItem(iconData: Icons.home_filled, page:FeedBody(), title: 'Home'),
    FloatingNavBarItem(iconData: Icons.broken_image_outlined, page: graph(), title: 'Doctors'),
    FloatingNavBarItem(iconData: Icons.bookmark, page: saved(), title: 'Reminders'),
    FloatingNavBarItem(iconData: Icons.person, page: profile(), title: 'Records'),
    ],
    horizontalPadding: 70,
    borderRadius: 40,
    hapticFeedback: true,
    showTitle: false,
      ),


      // Theme(
      //   data: ThemeData(canvasColor: Colors.black),
      //   child: BottomNavigationBar(
      //     type: BottomNavigationBarType.shifting,
      //    /*onTap: () {
      //      setState(() {
      //        Navigator.push(
      //          context, MaterialPageRoute(builder: (context) => NextPage(),),);
      //      });
      //
      //    },*/
      //    selectedItemColor: Colors.white,
      //    unselectedItemColor: Colors.grey,
      //    elevation: 10,
      //    items: [
      //      BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: ''),
      //      BottomNavigationBarItem(icon: Icon(Icons.broken_image_outlined),label: ''),
      //      BottomNavigationBarItem(icon: Icon(Icons.bookmark),label: ''),
      //      BottomNavigationBarItem(icon: Icon(Icons.person),label: ''),
      //
      //
      //    ],
      //
      //   ),
      //
      // ),

       // items: const <BottomNavigationBarItem>[
       //   BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: ''),
         // BottomNavigationBarItem(icon: Icon(Icons.broken_image_outlined),label: ''),
          //BottomNavigationBarItem(icon: Icon(Icons.bookmark),label: ''),
          //BottomNavigationBarItem(icon: Icon(Icons.person),label: ''),
        );





  }
}
