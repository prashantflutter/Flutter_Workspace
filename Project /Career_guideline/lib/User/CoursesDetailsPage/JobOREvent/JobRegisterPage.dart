import 'dart:developer';

import 'package:careerguideline/AppConstant/AppTextStyle.dart';
import 'package:careerguideline/AppConstant/Appcolors.dart';
import 'package:careerguideline/User/Pages/HomePage.dart';
import 'package:careerguideline/Widgets/ButtonWidgets.dart';
import 'package:careerguideline/Widgets/MyAppBar.dart';
import 'package:careerguideline/Widgets/TextFormWidgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../Admin/Pages/AdminHomePage.dart';
import '../../../Widgets/MyDialogs.dart';

class JobRegisterPage extends StatefulWidget {
  final String title;
  final bool isJob;
  final String jobTitle;
  final String description;

  const JobRegisterPage({Key? key, required this.title, required this.isJob, required this.jobTitle, required this.description}) : super(key: key);

  @override
  State<JobRegisterPage> createState() => _JobRegisterPageState();
}

class _JobRegisterPageState extends State<JobRegisterPage> {

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  void jobApply(){
    String userName = nameController.text.trim();
    String userEmail = emailController.text.trim();
    String userDate = dateController.text.trim();
    Map<String,dynamic> postJob ={
      'userName':userName,
      'userEmail':userEmail,
      'userDate':userDate,
      'jobTitle':widget.jobTitle,
      'jobDescription':widget.description,
    };

    if(userName.isEmpty || userEmail.isEmpty || userDate.isEmpty){
      ErrorDialog(context: context, title: 'Please fill all details!', sub1: "OK", onPressed: (){
        Navigator.pop(context);
      });
    }else{
      try{
        FirebaseFirestore.instance.collection('jobApplyData').add(postJob);
        nameController.clear();
        emailController.clear();
        dateController.clear();
        Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
        log('Job Apply Success!');
        MyToastMSG(text: 'Job Apply Success!', context: context);
      }on FirebaseAuthException catch(ex){
        ErrorDialog(context: context, title: ex.code.toString().replaceAll('_',' '), sub1: "OK", onPressed: (){
          Navigator.pop(context);
        });
      }
    }
  }

  void eventRegister(){
    String userName = nameController.text.trim();
    String userEmail = emailController.text.trim();
    String userDate = dateController.text.trim();
    Map<String,dynamic> postJob ={
      'userName':userName,
      'userEmail':userEmail,
      'userDate':userDate,
      'eventTitle':widget.jobTitle,
      'eventDescription':widget.description,
    };

    if(userName.isEmpty || userEmail.isEmpty || userDate.isEmpty){
      ErrorDialog(context: context, title: 'Please fill all details!', sub1: "OK", onPressed: (){
        Navigator.pop(context);
      });
    }else{
      try{
        FirebaseFirestore.instance.collection('EventRegisterData').add(postJob);
        nameController.clear();
        emailController.clear();
        dateController.clear();
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
        log('Event Register  Success!');
        MyToastMSG(text: 'Event Register  Success!', context: context);
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
      appBar: MyAppBar(title: widget.title,leading: BackNow(onPressed: ()=>Navigator.of(context),),),
      body: Column(
        children: [
          MyTextForm(controller: nameController, hintText: 'Enter Name'),
          MyTextForm(controller: emailController, hintText: 'Enter Email'),
          MyDatePicker(controller: dateController),
          MyButton(title: 'Submit', onPressed: (){
            log('Job & Event =>  ${widget.isJob}');
            if(widget.isJob){
              jobApply();
             }else{
              eventRegister();
            }
          }),

        ],
      ),
    );
  }

  Widget MyDatePicker({required TextEditingController controller,}){
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        child:TextField(
          controller: controller,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.calendar_today,color: pDark,),
              labelText: "Enter Date",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: pDark),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: pDark),
            ),
          ),
          readOnly: true,
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
                context: context, initialDate: DateTime.now(),
                firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                lastDate: DateTime(2101)
            );

            if(pickedDate != null ){
              print(pickedDate);
              String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
              print(formattedDate);

              setState(() {
                controller.text = formattedDate;
              });
            }else{
              print("Date is not selected");
            }
          },
        )
    );
  }
}
