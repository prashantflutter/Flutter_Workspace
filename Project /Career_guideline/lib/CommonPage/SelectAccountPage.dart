import 'dart:io';
import 'package:careerguideline/CommonPage/LoginPage.dart';
import 'package:careerguideline/Widgets/ButtonWidgets.dart';
import 'package:careerguideline/Widgets/MyAppBar.dart';
import 'package:flutter/material.dart';
import '../Widgets/MyDialogs.dart';


class SelectAccountPage extends StatelessWidget {
  const SelectAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop)async {
        if (didPop) return;
        LogoutNow(context: context,
            title: 'Are you sure want to exit?',
            sub1: 'Yes',
            sub2: 'No',
            onPressed1: () => exit(0),
            onPressed2: () => Navigator.pop(context));
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: MyAppBar(title: 'Create Account',automaticallyImplyLeading: false,),
        body: Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Image.asset('assets/PagesImages/account.png',width: double.infinity,fit: BoxFit.cover,),
            ),
            MyButton(title: 'Admin Account', width: 200,onPressed: (){
            // Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage(isAdmin: true,)));
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(isAdmin: 'Admin',)));
          }),
            MyButton(title: 'User Account', width: 200,onPressed: (){
            // Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage(isAdmin: false)));
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(isAdmin: 'User')));
          })
          ],
        ),
      ),
    );
  }
}
