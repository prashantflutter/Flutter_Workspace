import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AfterSplash())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Image.network("https://www.zarla.com/images/zarla-pixie-cruise-1x1-2400x2400-20210907-3jdmyqhhphxmjgvjbbrt.png?crop=1:1,smart&width=250&dpr=2"),

      ),
    );
  }


}

class AfterSplash extends StatelessWidget {
  const AfterSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("\u{1F917}",style: TextStyle(color: Colors.green,fontSize: 100,fontWeight: FontWeight.bold),),
            Text("** WellCome **",style: TextStyle(color: Colors.green,fontSize: 30,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}

