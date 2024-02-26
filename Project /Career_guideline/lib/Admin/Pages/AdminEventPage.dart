import 'dart:developer';
import 'package:careerguideline/Admin/Pages/AdminHomePage.dart';
import 'package:careerguideline/Widgets/ButtonWidgets.dart';
import 'package:careerguideline/Widgets/MyAppBar.dart';
import 'package:careerguideline/Widgets/MyDialogs.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../Widgets/TextFormWidgets.dart';



class AdminEventPage extends StatefulWidget {
  const AdminEventPage({Key? key}) : super(key: key);

  @override
  State<AdminEventPage> createState() => _AdminEventPageState();
}

class _AdminEventPageState extends State<AdminEventPage> {

  TextEditingController eventsTitle = TextEditingController();
  TextEditingController eventPosition = TextEditingController();
  TextEditingController eventDesc = TextEditingController();


  void postEventsData(){
    String eventsTitle1 = eventsTitle.text.trim();
    String eventDesc1 = eventDesc.text.trim();
    String eventPosition1 = eventPosition.text.trim();
    Map<String,dynamic> postJob ={
      'eventsTitle':eventsTitle1,
      'eventDesc':eventDesc1,
      'eventPosition':eventPosition1,
    };

    if(eventsTitle1.isEmpty || eventDesc1.isEmpty || eventPosition1.isEmpty){
      ErrorDialog(context: context, title: 'Please fill all details!', sub1: "OK", onPressed: (){
        Navigator.pop(context);
      });
    }else{
      try{
        FirebaseFirestore.instance.collection('AdminEventsData').add(postJob);
        eventsTitle.clear();
        eventDesc.clear();
        eventPosition.clear();
        Navigator.push(context, MaterialPageRoute(builder: (context)=> AdminHomePage(id: '',)));
        log('event Posted Success!');
        MyToastMSG(text: 'Event Posted Successfully!', context: context);
      }on FirebaseAuthException catch(ex){
        ErrorDialog(context: context, title: ex.code.toString().replaceAll('_',' '), sub1: "OK", onPressed: (){
          Navigator.pop(context);
        });
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        leading: BackNow(onPressed: ()=>Navigator.pop(context)),
        title: 'Admin Post Events',automaticallyImplyLeading: false,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:15),
              child: MyTextForm(controller: eventsTitle, hintText: 'Enter Event Title'),
            ),
            MyTextForm(controller: eventPosition, hintText: 'Enter Events Location'),
            MyTextForm(controller: eventDesc, hintText: 'Enter Events Description',maxLines: 6),
            MyButton(title: 'Submit', onPressed: (){
              postEventsData();
            }),
          ],
        ),
      ),
    );
  }
}

