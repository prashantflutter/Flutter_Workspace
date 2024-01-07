// 70. Create an application with bottom navigation with 3 tabs Gallery,
// audio and video and design each page with dummy data

import 'package:flutter/material.dart';
import 'package:tops_tasks/modual4/task70/audio_page.dart';
import 'package:tops_tasks/modual4/task70/gallery_page.dart';
import 'package:tops_tasks/modual4/task70/video_page.dart';

class NavigationTaskPage extends StatefulWidget {
   NavigationTaskPage({super.key});

  @override
  State<NavigationTaskPage> createState() => _NavigationTaskPageState();
}

class _NavigationTaskPageState extends State<NavigationTaskPage> {

  int _selectedIndex = 0;
  TextStyle textStyle =  TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20);
  List<Widget> _pages = <Widget>[
    GalleryPage(),
    AudioPage(),
    VideoPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.black,
        centerTitle: true,
        title: _selectedIndex == 0?Text("Gallery",style:textStyle):
               _selectedIndex == 1?Text("Audio",style:textStyle):
                                   Text("Video",style:textStyle),
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex), //New
      ),
      bottomNavigationBar:CustomBottomNavigation(),
    );
  }


  Widget CustomBottomNavigation(){
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      selectedItemColor: Colors.black,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.image,),
            label: "Gallery",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.audiotrack,),
            label: "Audio"
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.video_camera_back_outlined,),
            label: "Video"
        ),
      ],
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



}
