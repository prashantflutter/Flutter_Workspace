import 'dart:async';

import 'package:flutter/material.dart';

class FirstActivity extends StatelessWidget {
  const FirstActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
       automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: Text("FirstActivity",style: TextStyle(color: Colors.white),),),
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => SecondActivity())),
            child: Text("Second Activity",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
      ),
    );
  }
}


class SecondActivity extends StatelessWidget {
  const SecondActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: Text("SecondActivity",style: TextStyle(color: Colors.white),),),
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => FirstActivity())),
            child: Text("First Activity",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
      ),
    );
  }
}


