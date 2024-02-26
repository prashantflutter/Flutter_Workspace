import 'package:careerguideline/Admin/Pages/AdminHomePage.dart';
import 'package:careerguideline/Admin/Pages/AdminProfilePage.dart';
import 'package:careerguideline/AppConstant/AppTextStyle.dart';
import 'package:careerguideline/AppConstant/Appcolors.dart';
import 'package:careerguideline/CommonPage/SelectAccountPage.dart';
import 'package:careerguideline/User/Pages/HomePage.dart';
import 'package:careerguideline/Widgets/MyDialogs.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../User/Pages/UserProfilePage.dart';

Widget MyDrawer(BuildContext context,{bool isAdmin = false,required String id}){
  return Drawer(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.zero
    ),
    backgroundColor: pDark,
    child: Column(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          padding: EdgeInsets.only(top: 40),
          color: pWhite,
          child: Column(
            children: [
              CircleAvatar(
                radius: 80,
                backgroundColor: pDark,
                child: Image.asset('assets/playstore.png'),
              ),
              // myTitle(data: 'Career B'),
            ],
          ),
        ),
        SizedBox(height: 20,),
        MyListTiles(title: 'Home', icon: Icons.home_outlined,
        onTap: (){
          Navigator.pop(context);
          if(isAdmin){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>AdminHomePage(id: id,)));
          }else{
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          }
        }),
        MyListTiles(title: isAdmin?'Admin Profile':'User Profile',onTap: ()async{
          Navigator.pop(context);
          SharedPreferences preferences = await SharedPreferences.getInstance();
          preferences.getString('key')?? '';
          if(isAdmin){
            print('Admin Profile id : $id');
            Navigator.push(context, MaterialPageRoute(builder: (context)=>AdminProfilePage(id: id,)));
          }else{
            final UserID = preferences.getString('UserID')?? '';
            print('UserProfile id : $UserID');

            Navigator.push(context, MaterialPageRoute(builder: (context)=>UserProfilePage(id: UserID,)));
          }
        }, icon: Icons.account_circle_outlined),
        MyListTiles(title: 'Logout',onTap: (){
            LogoutNow(context: context,
              title: 'Are sure want to logout?',
              sub1: 'Yes',
              sub2: 'No',
              onPressed1: ()async{
            SharedPreferences loginData = await SharedPreferences.getInstance();
                loginData.setBool('login', true);
                loginData.setString('identify', '');
            await FirebaseAuth.instance.signOut();
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> SelectAccountPage()), (route) => false);
            // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SelectAccountPage()));
            },
              onPressed2: ()=>Navigator.pop(context));
        }, icon: Icons.logout,),
      ],
    ),
  );
}

Widget MyListTiles({required String title,void Function()? onTap,required IconData icon}){
  return ListTile(
    onTap: onTap,
    leading: Icon(icon,color: pWhite,size: 30,),
    title: Text(title,style: textStyle.copyWith(color: pWhite),),
    trailing: Icon(Icons.navigate_next_sharp,color: pWhite,size: 30,),
  );
}