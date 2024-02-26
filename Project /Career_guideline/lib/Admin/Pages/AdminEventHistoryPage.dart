import 'package:careerguideline/AppConstant/Appcolors.dart';
import 'package:careerguideline/Widgets/ButtonWidgets.dart';
import 'package:careerguideline/Widgets/MyAppBar.dart';
import 'package:careerguideline/Widgets/TextWidgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AdminEventHistoryPage extends StatefulWidget {
  const AdminEventHistoryPage({Key? key}) : super(key: key);

  @override
  State<AdminEventHistoryPage> createState() => _AdminEventHistoryPageState();
}

class _AdminEventHistoryPageState extends State<AdminEventHistoryPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Admin Events History',leading: BackNow(onPressed: ()=>Navigator.pop(context)),),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('AdminEventsData').snapshots(),
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
                              myTitle(data: 'Event : ${userDataList['eventsTitle']}'),
                              myTitle(data: 'Location : ${userDataList['eventPosition']}'),
                              myDescription(data: 'Description :\n${userDataList['eventDesc']}')
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            }else{
              return Text('No Data!');
            }

          }else{
            return Center(child: CircularProgressIndicator(color: pDark,),);
          }

        },
      ),
    );
  }
}
