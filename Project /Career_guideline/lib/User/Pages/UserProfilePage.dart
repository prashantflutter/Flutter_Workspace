import 'dart:developer';

import 'package:careerguideline/User/Pages/HomePage.dart';
import 'package:careerguideline/Widgets/ButtonWidgets.dart';
import 'package:careerguideline/Widgets/MyAppBar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../AppConstant/Appcolors.dart';
import '../../Widgets/MyDialogs.dart';
import '../../Widgets/TextWidgets.dart';

class UserProfilePage extends StatelessWidget {
  final String? id;
   UserProfilePage({Key? key,this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log('User Profiles id : $id');
    return Scaffold(
      appBar: MyAppBar(title: 'User Profiles',automaticallyImplyLeading: false,),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('UserAccountDataList').doc(id).snapshots(),
        builder: (context,snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator(color: pDark,));
          }
          else if(snapshot.hasData && snapshot.data == null){
            return Center(child: myTitle(data: 'Empty Data...'));
          }
          else if(snapshot.connectionState == ConnectionState.active){
            return Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 30,),
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: pDark,
                    child: Icon(Icons.person,color: pWhite,size: 60,),
                  ),
                  SizedBox(height: 30,),
                  TitleWithData(title: 'Name', data: snapshot.data!['name']),
                  TitleWithData(title: 'Email', data: snapshot.data!['email']),
                  TitleWithData(title: 'Gender', data: snapshot.data!['gender']),
                  TitleWithData(title: 'Address', data: 'Tops Technology Rajkot'),
                  SizedBox(height: 30,),

                  MyButton(title: 'Delete Account',width: 200, onPressed: (){
                    LogoutNow(context: context,
                        title: 'are you sure to delete your account?',
                        sub1: 'Yes',
                        sub2: 'No',
                        onPressed1: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                          MyToastMSG(text: 'your request for account delete form application...', context: context);
                        },
                        onPressed2: ()=>Navigator.pop(context));
                  })
                ],
              ),
            );
          }else{
            return Center(child: CircularProgressIndicator(color: pDark,));
          }

        }
      ),
    );
  }
}
