import 'dart:developer';
import 'dart:io';
import 'package:careerguideline/Admin/Pages/AdminHomePage.dart';
import 'package:careerguideline/Widgets/ButtonWidgets.dart';
import 'package:careerguideline/Widgets/MyAppBar.dart';
import 'package:careerguideline/Widgets/MyDialogs.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../Widgets/TextFormWidgets.dart';



class AdminPostJobPage extends StatefulWidget {
  const AdminPostJobPage({Key? key}) : super(key: key);

  @override
  State<AdminPostJobPage> createState() => _AdminPostJobPageState();
}

class _AdminPostJobPageState extends State<AdminPostJobPage> {

  TextEditingController jobTitle = TextEditingController();
  TextEditingController jobPosition = TextEditingController();
  TextEditingController jobDesc = TextEditingController();
  File _imageFile = File("");

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  void postData(){
    String jobTitle1 = jobTitle.text.trim();
    String jobDesc1 = jobDesc.text.trim();
    String jobPosition1 = jobPosition.text.trim();
    Map<String,dynamic> postJob ={
      'jobTitle':jobTitle1,
      'jobDesc':jobDesc1,
      'jobPosition':jobPosition1,
    };

    if(jobTitle1.isEmpty || jobDesc1.isEmpty){
      ErrorDialog(context: context, title: 'Please fill all details!', sub1: "OK", onPressed: (){
        Navigator.pop(context);
      });
    }else{
      try{
        FirebaseFirestore.instance.collection('AdminJobPost').add(postJob);
        jobTitle.clear();
        jobDesc.clear();
        jobPosition.clear();
        Navigator.push(context, MaterialPageRoute(builder: (context)=> AdminHomePage(id: '',)));
        log('Job Posted Success!');
        MyToastMSG(text: 'Job Posted Successfully!', context: context);
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
        title: 'Admin Post Jobs',automaticallyImplyLeading: false,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:15),
              child: MyTextForm(controller: jobTitle, hintText: 'Enter Job Title'),
            ),
            MyTextForm(controller: jobPosition, hintText: 'Enter Job Position'),
            MyTextForm(controller: jobDesc, hintText: 'Enter Job Description',maxLines: 6),
            MyButton(title: 'Submit', onPressed: (){
              postData();
            }),
          ],
        ),
      ),
    );
  }
}

