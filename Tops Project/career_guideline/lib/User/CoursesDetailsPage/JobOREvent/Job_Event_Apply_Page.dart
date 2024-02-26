import 'package:careerguideline/AppConstant/Appcolors.dart';
import 'package:careerguideline/Widgets/TextWidgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class JobEventApplyPage extends StatefulWidget {
  final bool isJob;
  const JobEventApplyPage({Key? key, this.isJob = false,}) : super(key: key);

  @override
  State<JobEventApplyPage> createState() => _JobEventApplyPageState();
}

class _JobEventApplyPageState extends State<JobEventApplyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection(widget.isJob?'jobApplyData':'EventRegisterData').snapshots(),
          builder: (context,snapshot){
            if(snapshot.connectionState == ConnectionState.active){
              if(snapshot.hasData && snapshot.data != null){
                return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context,index){
                  Map<String,dynamic> jobEventData = snapshot.data!.docs[index].data();
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                      child: Card(
                        elevation: 5,
                        child: widget.isJob?
                        ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              myTitle(data: 'Field : ${jobEventData['jobTitle']}'),
                              myTitle(data: 'Position : ${jobEventData['jobDescription']}'),
                              myTitle(data: 'Date : ${jobEventData['userDate']}'),
                            ],
                          ),
                        ):
                        ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              myTitle(data: 'Event : ${jobEventData['eventTitle']}'),
                              myTitle(data: 'Location : ${jobEventData['eventDescription']}'),
                              myTitle(data: 'Date : ${jobEventData['userDate']}'),
                            ],
                          ),
                        ),
                      ),
                    );
                });
              }else{
                return myTitle(data: 'Empty List!');
              }

            }else{
              return Center(child: CircularProgressIndicator(color: pDark,),);
            }
          }
      ),
    );
  }
}
