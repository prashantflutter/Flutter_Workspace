import 'package:careerguideline/AppConstant/Appcolors.dart';
import 'package:careerguideline/Widgets/ButtonWidgets.dart';
import 'package:careerguideline/Widgets/MyAppBar.dart';
import 'package:careerguideline/Widgets/TextWidgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AdminOldPostPage extends StatefulWidget {
  const AdminOldPostPage({Key? key}) : super(key: key);

  @override
  State<AdminOldPostPage> createState() => _AdminOldPostPageState();
}

class _AdminOldPostPageState extends State<AdminOldPostPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Old Job Posts',leading: BackNow(onPressed: ()=>Navigator.pop(context)),),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('AdminJobPost').snapshots(),
        builder: (context,snapshots){
        if(snapshots.connectionState == ConnectionState.active){
          if(snapshots.hasData && snapshots.data != null){
            return  ListView.builder(
                itemCount: snapshots.data!.docs.length,
                itemBuilder: (context,index) {
                  Map<String,dynamic> userDataList =  snapshots.data!.docs[index].data();
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                    child: Card(
                      elevation: 5,
                      child: ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            myTitle(data: 'Field : ${userDataList['jobTitle']}'),
                            myTitle(data: 'Position : ${userDataList['jobPosition']}'),
                            myDescription(data: 'Description :\n${userDataList['jobDesc']}')
                          ],
                        ),
                      ),
                    ),
                  );
                });
          }else{
            return myTitle(data: 'No Data!');
          }

        }else{
          return Center(child: CircularProgressIndicator(color: pDark,),);
        }

        },
      ),
    );
  }
}
