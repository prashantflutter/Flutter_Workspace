import 'package:careerguideline/User/CoursesDetailsPage/JobOREvent/JobRegisterPage.dart';
import 'package:careerguideline/Widgets/ButtonWidgets.dart';
import 'package:careerguideline/Widgets/MyAppBar.dart';
import 'package:careerguideline/Widgets/TextWidgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../../AppConstant/Appcolors.dart';

class JobDetailsPage extends StatelessWidget {
  final String title;
  final int id;
  const JobDetailsPage({Key? key, required this.title, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: title,leading: BackNow(onPressed: () => Navigator.pop(context),),),
      body:StreamBuilder(
          stream: FirebaseFirestore.instance.collection(id==1?'AdminJobPost':'AdminEventsData').snapshots(),
          builder:(context,snapshots){
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
                          child: id==1?
                          ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                myTitle(data: 'Field : ${userDataList['jobTitle']}'),
                                myTitle(data: 'Position : ${userDataList['jobPosition']}'),
                                myDescription(data: 'Description :\n${userDataList['jobDesc']}'),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Center(child: MyButton(title: 'Apply',backgroundColor: pDark,isColor: true, onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>JobRegisterPage(title: 'Apply Job', isJob: true,
                                      jobTitle: userDataList['jobTitle'], description: userDataList['jobPosition'],)));

                                  })),
                                )
                              ],
                            ),
                          ):
                          ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                myTitle(data: 'Event : ${userDataList['eventsTitle']}'),
                                myTitle(data: 'Location : ${userDataList['eventPosition']}'),
                                myDescription(data: 'Description :\n${userDataList['eventDesc']}'),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Center(child: MyButton(title: 'Register Now',width: 180,backgroundColor: pDark,isColor: true, onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> JobRegisterPage(title: 'Register Event', isJob: false,
                                          jobTitle: userDataList['eventsTitle'], description: userDataList['eventPosition'],)));

                                  })),
                                ),
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
          }
      ),
    );
  }
}
