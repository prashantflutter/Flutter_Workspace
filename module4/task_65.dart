// 65. open alert dialog when user want to exit from the application

import 'dart:io';

import 'package:flutter/material.dart';

class ExitFromApp extends StatelessWidget {
  const ExitFromApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              exitDialog(context);
            },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
            child: Text("Exit Now",style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }

  void exitDialog(BuildContext context){
    showDialog(context: context, builder: (context){
      return  AlertDialog(
        title: Text("Are sure want to exit?",style: TextStyle(color: Colors.black,fontSize: 18),),
        actionsAlignment: MainAxisAlignment.spaceAround,
        actions: [
          ElevatedButton(
            onPressed: (){
              exit(0);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            child: Text("Yes",style: TextStyle(color: Colors.white),),
          ),
          ElevatedButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            child: Text("No",style: TextStyle(color: Colors.white),),
          )
        ],
      );
    });
  }
}
