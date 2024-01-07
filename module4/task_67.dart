// 67. Write a code to display profile and logout option in options menu

import 'package:flutter/material.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: Text("SecondActivity",style: TextStyle(color: Colors.white),),
        actions: [
          PopupMenuButton<int>(
            itemBuilder: (context) => [
              // PopupMenuItem 1
              PopupMenuItem(
                value: 1,
                // row with 2 children
                child: Row(
                  children: [
                    Icon(Icons.logout),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Log out")
                  ],
                ),
              ),
              // PopupMenuItem 2
              PopupMenuItem(
                value: 2,
                // row with two children
                child: Row(
                  children: [
                    Icon(Icons.account_circle_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Profile")
                  ],
                ),
              ),
            ],
            offset: Offset(-30, 20),
            color: Colors.white,
            elevation: 2,
            onSelected: (value) {
              // if value 1 show dialog
              if (value == 1) {
                logout();
                // if value 2 show dialog
              } else if (value == 2) {
                setState(() {
                  logout(profile: true);
                });
              }
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Center(
                child: Image.network("https://cdn3.iconfinder.com/data/icons/3d-printing-icon-set/512/User.png",width: 100,height: 100,),
              ),
              SizedBox(height: 20,),
              CustomText(
                  title: "Name",
                  text: "Prashant Vadher"
              ),
              SizedBox(height: 10,),
              CustomText(
                  title: "Course",
                  text: "Flutter Developer"
              ),
              SizedBox(height: 10,),
              CustomText(
                  title: "Email",
                  text: "pvadher@gmail.com"
              ),
              SizedBox(height: 10,),
              CustomText(
                  title: "Contact",
                  text: "+91 9574724265"
              ),
              SizedBox(height: 10,),
              CustomText(
                  title: "Skills",
                  text: "Flutter ,Dart ,SqLite ,GetX ,Bloc"
              ),
              SizedBox(height: 10,),
              CustomText(
                  title: "Hobbies",
                  text: "Listening Music,Game Playing"
              ),
              SizedBox(height: 10,),
              CustomText(
                  title: "Address",
                  text: "PuskarDham ,Rajkot,360005."
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: (){
                      logout();
                    }, child: Text("Logout",style: TextStyle(color: Colors.white),)),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget CustomText({Widget? icon,String title = "",String text = "",double width = double.infinity}){
    return Container(
      width: width,
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.black,
          width: 1.5,
        ),
      ),
      child: Row(
        children: [
          Text("${title} : ${text}",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }

  logout({bool profile = false}){
    showDialog(context: context, builder: (context){
      return profile == false?AlertDialog(
        title: Text("Are sure want logout?",textAlign: TextAlign.center),
        actionsAlignment: MainAxisAlignment.spaceEvenly,
        actions: [
          ElevatedButton(onPressed: (){
            Navigator.of(context).pop();
          }, child: Text("Yes",style: TextStyle(color: Colors.white),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: (){
            Navigator.of(context).pop();
          }, child: Text("No",style: TextStyle(color: Colors.white),))
        ],
      ):AlertDialog(
        title: Text("You are already on profile page",textAlign: TextAlign.center),
        actionsAlignment: MainAxisAlignment.spaceEvenly,
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,

            ),
              onPressed: (){
            Navigator.of(context).pop();
            setState(() {
              profile = true;
            });
          }, child: Text("Ok",style: TextStyle(color: Colors.white),))
        ],
      );
    });
  }

}
