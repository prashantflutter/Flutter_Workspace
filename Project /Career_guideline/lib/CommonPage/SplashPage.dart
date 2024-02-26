
import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Admin/Pages/AdminHomePage.dart';
import '../User/Pages/HomePage.dart';
import 'SelectAccountPage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late bool newUser;

  @override
  void initState() {
    super.initState();
    checkIfAlreadyLogin();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset('assets/PagesImages/ss.gif',),
    );
    
  }

  void checkIfAlreadyLogin() async {

    SharedPreferences  loginData = await SharedPreferences.getInstance();

    newUser = (loginData.getBool('login') ?? true);
    final identify = loginData.getString('identify') ?? '';

    print(newUser);
    if (newUser == false) {
      print("newUser == false");
      if(identify == 'Admin'){
        final  AdminID = loginData.getString('AdminID')?? '';
        log('AdminID : $AdminID');
        Timer(Duration(seconds: 4), ()=>
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AdminHomePage(id: AdminID,))));
      }else{
        final UserID = loginData.getString('UserID')?? '';
        log('UserID : $UserID');
        Timer(Duration(seconds: 4), ()=> Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => HomePage(id: UserID,))));
      }
    }else{
      log('newUser');
      Timer(Duration(seconds: 4), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SelectAccountPage())));
    }

  }
}
