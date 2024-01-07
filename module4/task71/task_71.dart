// 71. Create an application with Navigation Drawer with 3 tabs Gallery,
// audio and video and design each page with dummy data

import 'package:flutter/material.dart';
import 'package:tops_tasks/modual4/task70/audio_page.dart';
import 'package:tops_tasks/modual4/task70/gallery_page.dart';
import 'package:tops_tasks/modual4/task70/video_page.dart';
import 'package:tops_tasks/modual4/task71/data_list.dart';

class NavigationDrawerPage extends StatefulWidget {
  NavigationDrawerPage({super.key});

  @override
  State<NavigationDrawerPage> createState() => _NavigationDrawerPageState();
}

class _NavigationDrawerPageState extends State<NavigationDrawerPage> {

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
          leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: Icon(
                    Icons.menu,color: Colors.white,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  );
              }),
        title: _selectedIndex == 0?Text("Gallery",style:textStyle):
        _selectedIndex == 1?Text("Audio",style:textStyle):
        Text("Video",style:textStyle),
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex), //New
      ),
      drawer: CustomDrawer(),
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

  Widget CustomDrawer(){
    return Container(
      width: 300,
      height: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 10,),
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(logoUrl),fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                SizedBox(height: 10,),
                Text("Gaana",style:TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Divider(color: Colors.black,height: 2,),
          ListTile(
            leading: Icon(Icons.photo,color: Colors.black,),
            title: Text("Gallery",style:TextStyle(color: Colors.black,)),
            trailing: Icon(Icons.navigate_next,color:Colors.black,),
            onTap: (){
              setState(() {
                Navigator.of(context).pop(_selectedIndex = 0);
              });
            },
          ),
          Divider(color: Colors.black,height: 2,),
          ListTile(
            leading: Icon(Icons.audiotrack,color: Colors.black,),
            title: Text("Audio",style:TextStyle(color: Colors.black,)),
            trailing: Icon(Icons.navigate_next,color:Colors.black,),
            onTap: (){
              setState(() {
                Navigator.of(context).pop(_selectedIndex = 1);
              });
            },
          ),
          Divider(color: Colors.black,height: 2,),
          ListTile(
            leading: Icon(Icons.video_camera_back_outlined,color: Colors.black,),
            title: Text("Video",style:TextStyle(color: Colors.black,)),
            trailing: Icon(Icons.navigate_next,color:Colors.black,),
            onTap: (){
              setState(() {
                Navigator.of(context).pop(_selectedIndex = 2);
              });
            },
          ),
          Divider(color: Colors.black,height: 2,),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



}
