import 'dart:async';

import 'package:flutter/material.dart';

import 'LoginPaga.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),() => Navigator.push(context, (MaterialPageRoute(builder: (context)=> LoginPage2()))));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CircularProgressIndicator(),),
    );
  }
}
