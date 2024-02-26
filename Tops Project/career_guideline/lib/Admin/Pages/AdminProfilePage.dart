import 'dart:developer';

import 'package:careerguideline/Admin/Pages/AdminHomePage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../AppConstant/Appcolors.dart';
import '../../Widgets/ButtonWidgets.dart';
import '../../Widgets/MyAppBar.dart';
import '../../Widgets/MyDialogs.dart';
import '../../Widgets/TextWidgets.dart';

class AdminProfilePage extends StatefulWidget {
  final String? id;
  const AdminProfilePage({Key? key, this.id}) : super(key: key);

  @override
  State<AdminProfilePage> createState() => _AdminProfilePageState();
}

class _AdminProfilePageState extends State<AdminProfilePage> {

  String? Admin_ID;

  init()async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    final AdminID = preferences.getString('AdminID')?? '';
    if(AdminID.isNotEmpty){
      Admin_ID = AdminID;
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    init();
  }

   @override
  Widget build(BuildContext context) {
    log('Admin Profile id : ${widget.id}');
    log('Admin  id : ${Admin_ID}');

    return Scaffold(
      appBar: MyAppBar(title: 'Admin Profiles',automaticallyImplyLeading: false,),
      body:   StreamBuilder(
        stream:  FirebaseFirestore.instance.collection('AdminAccountDataList').doc(Admin_ID).snapshots(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator(color: pDark,));
          }
          else if(snapshot.hasData && snapshot.data == null){
            return Center(child: myTitle(data: 'Wait ...'));
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
                  // TitleWithData(title: 'Address', data: 'Tops Technology Rajkot'),
                  SizedBox(height: 30,),

                  MyButton(title: 'Delete Admin Account',width: 250, onPressed: (){
                    LogoutNow(context: context,
                        title: 'Are sure want to delete account?',
                        sub1: 'Yes',
                        sub2: 'No',
                        onPressed1: (){
                          MyToastMSG(text: 'your request for account delete form application...', context: context);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> AdminHomePage(id: '',)));},
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


