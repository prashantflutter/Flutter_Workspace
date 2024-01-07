// 69. Create an application like gmail and display Screens according to
// user selection and design each page with dummy data

import 'package:flutter/material.dart';

import 'allEmailPage.dart';
import 'meetPage.dart';

class GmailHomePage extends StatefulWidget {
  const GmailHomePage({super.key});

  @override
  State<GmailHomePage> createState() => _GmailHomePageState();
}

class _GmailHomePageState extends State<GmailHomePage> {

  int _selectedIndex = 0;

  Color darkBlack = Color(0xFF2b2b2b);
  Color liteBlack = Color(0xFF3c3f41);
  Color grayLite = Color(0xFF87939a);
  Color white = Color(0xFFFFFFFF);

  List<Widget> _pages = <Widget>[
    AllEmailPage(),
    MeetPage(),
  ];
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var cr7 = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtj2nDCHaO_T-XsdVA-DnVob0dIWFgEzwizg&usqp=CAU";
    return Scaffold(
      backgroundColor: darkBlack,
      key: _scaffoldKey,
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: CustomBottomNavigation(),
      drawer: CustomDrawer(),
    );
  }


  Widget CustomBottomNavigation(){
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      selectedItemColor: Colors.white54,
      backgroundColor: liteBlack,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.email_outlined,),
          label: "",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.video_camera_front_outlined,),
            label: ""
        ),
      ],
    );
  }

  Widget CustomDrawer(){
    TextStyle textStyle = TextStyle(color: white,fontSize: 18);
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width-100,
      height: double.infinity,
      color: darkBlack,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Row(
              children: [
                SizedBox(width: 15,),
                Text("Gmail",style: TextStyle(color: Colors.white,fontSize: 23),),
              ],
            ),
            Divider(color: grayLite,),
            ListTile(
              leading: Icon(Icons.photo_library_outlined,color: white,),
              title:Text("All inboxes",style: textStyle,),
               onTap: (){
                Navigator.of(context).pop();
                },
            ),
            Divider(color: grayLite,),
            InkWell(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Container(
                width: size.width-100,
                height: 50,
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: grayLite,
                  borderRadius:BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  )
                ),
                child:ListTile(
                  leading: Icon(Icons.photo_library_outlined,color: darkBlack,),
                  title:Text("Primary",style: TextStyle(color: darkBlack),),
                  trailing: Text("458",style: TextStyle(color: darkBlack,fontSize: 16),),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Container(
                width: size.width-100,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius:BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )
                ),
                child:ListTile(
                  leading: Icon(Icons.paid_outlined,color: white,),
                  title:Text("Promotions",style: TextStyle(color: white),),
                  trailing: Container(
                      width: 65,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent.shade200,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text("74 new",style: TextStyle(color: darkBlack,fontSize: 14),)),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Container(
                width: size.width-100,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius:BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )
                ),
                child:ListTile(
                  leading: Icon(Icons.group_add_outlined,color: white,),
                  title:Text("Social",style: TextStyle(color: white),),
                  trailing: Container(
                    width: 65,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.green.shade500,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text("49 nea",style: TextStyle(color: darkBlack,fontSize: 14),),),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                SizedBox(width: 20,),
                Text("All labels",style: TextStyle(color: Colors.white,fontSize: 16),),
              ],
            ),
            SizedBox(height: 5,),
            InkWell(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Container(
                width: size.width-100,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius:BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )
                ),
                child:ListTile(
                  leading: Icon(Icons.star_border,color: white,),
                  title:Text("Starred",style: TextStyle(color: white),),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Container(
                width: size.width-100,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius:BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )
                ),
                child:ListTile(
                  leading: Icon(Icons.watch_later_outlined,color: white,),
                  title:Text("Snoozed",style: TextStyle(color: white),),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Container(
                width: size.width-100,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius:BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )
                ),
                child:ListTile(
                  leading: Icon(Icons.label_important_outline,color: white,),
                  title:Text("Important",style: TextStyle(color: white),),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Container(
                width: size.width-100,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius:BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )
                ),
                child:ListTile(
                  leading: Icon(Icons.send,color: white,),
                  title:Text("Sent",style: TextStyle(color: white),),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Container(
                width: size.width-100,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius:BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )
                ),
                child:ListTile(
                  leading: Icon(Icons.schedule_send,color: white,),
                  title:Text("Scheduled",style: TextStyle(color: white),),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Container(
                width: size.width-100,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius:BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )
                ),
                child:ListTile(
                  leading: Icon(Icons.send_and_archive,color: white,),
                  title:Text("Outbox",style: TextStyle(color: white),),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Container(
                width: size.width-100,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius:BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )
                ),
                child:ListTile(
                  leading: Icon(Icons.file_copy_outlined,color: white,),
                  title:Text("Darfts",style: TextStyle(color: white),),
                  trailing: Text("7",style: TextStyle(color: white,fontSize: 14),),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Container(
                width: size.width-100,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius:BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )
                ),
                child:ListTile(
                  leading: Icon(Icons.alternate_email,color: white,),
                  title:Text("All mail",style: TextStyle(color: white),),
                  trailing: Text("754",style: TextStyle(color: white,fontSize: 14),),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Container(
                width: size.width-100,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius:BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )
                ),
                child:ListTile(
                  leading: Icon(Icons.warning_amber,color: white,),
                  title:Text("Spam",style: TextStyle(color: white),),
                  trailing: Text("6",style: TextStyle(color: white,fontSize: 14),),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Container(
                width: size.width-100,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius:BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )
                ),
                child:ListTile(
                  leading: Icon(Icons.delete_outline,color: white,),
                  title:Text("Bin",style: TextStyle(color: white),),
                  trailing: Text("9",style: TextStyle(color: white,fontSize: 14),),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                SizedBox(width: 20,),
                Text("Google apps",style: TextStyle(color: Colors.white,fontSize: 16),),
              ],
            ),
            SizedBox(height: 5,),
            InkWell(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Container(
                width: size.width-100,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius:BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )
                ),
                child:ListTile(
                  leading: Icon(Icons.calendar_today,color: white,),
                  title:Text("Calender",style: TextStyle(color: white),),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Container(
                width: size.width-100,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius:BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )
                ),
                child:ListTile(
                  leading: Icon(Icons.account_circle_outlined,color: white,),
                  title:Text("Contacts",style: TextStyle(color: white),),
                ),
              ),
            ),
            Divider(color: grayLite,),
            InkWell(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Container(
                width: size.width-100,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius:BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )
                ),
                child:ListTile(
                  leading: Icon(Icons.settings_outlined,color: white,),
                  title:Text("Settings",style: TextStyle(color: white),),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Container(
                width: size.width-100,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius:BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )
                ),
                child:ListTile(
                  leading: Icon(Icons.help_outline,color: white,),
                  title:Text("Help and feedback",style: TextStyle(color: white),),
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
