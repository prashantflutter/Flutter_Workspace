import 'package:flutter/material.dart';

class UserChoicePage extends StatefulWidget {
  const UserChoicePage({super.key});

  @override
  State<UserChoicePage> createState() => _UserChoicePageState();
}

class _UserChoicePageState extends State<UserChoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: Text("UserChoicePage",style: TextStyle(color: Colors.white),),),
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            onPressed: ()=> simpleDialog(),
            child: Text("Select Choice",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
      ),
    );
  }

  void simpleDialog(){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text("Respectively user's choice ",style: TextStyle(color: Colors.black),),
        content: Text("Positive & Negative",style: TextStyle(color: Colors.grey.shade700),),
        actionsAlignment: MainAxisAlignment.spaceAround,
        actions: [
          ElevatedButton(
              onPressed: (){
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("you choice Positive Congratulations!",style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.green,
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green
              ),
              child: Text("Positive",style: TextStyle(color: Colors.white),)),
          ElevatedButton(
              onPressed: (){
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("you choice Negative Congratulations!",style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.redAccent,
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent
              ),child: Text("Negative",style: TextStyle(color: Colors.white),)),
        ],
      );
    });
  }
}
