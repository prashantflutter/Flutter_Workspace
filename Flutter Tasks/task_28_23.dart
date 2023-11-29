import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled/task_21_23/task_25_23.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String img1 = "https://logowik.com/content/uploads/images/google-dart2862.jpg";

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 7), () =>Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(child: SizedBox(
            width: double.infinity,
            height: 250,
            child: Column(
              children: [
                Image.network(img1,width: 200,height: 100,),
                Text('WellCome Flutter',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ],
            ),
          ),),
          Positioned(
            right: 0,
            left: 0,
            bottom: 30,
            child:Container(width: 60,height: 60,child: Lottie.asset("images/circle.json",fit: BoxFit.contain)),),
        ],
      ),
    );
  }
}
