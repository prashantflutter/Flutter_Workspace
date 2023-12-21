// 62. Write a code to display simple alert dialog with title, description and
// icon when button is clicked

import 'package:flutter/material.dart';

class DisplaySimple extends StatefulWidget {
  const DisplaySimple({super.key});

  @override
  State<DisplaySimple> createState() => _DisplaySimpleState();
}

class _DisplaySimpleState extends State<DisplaySimple> {

  bool _visible = false;
  var content = "A Flutter Developer is a software engineer who specializes in using the Flutter framework to create cross-platform mobile applications. Flutter developers have fluency in writing code using the Dart programming language and are therefore Dart developers as well.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(" Display simple alert dialog ",style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue
                  ),
                  onPressed: (){
                    simpleDialog();
                  },
                  child: Text("Show Simple Dialog",style: TextStyle(color: Colors.white),)),
            ],
          ),
          SizedBox(height: 10,),
          Visibility(child:Image.asset("assets/flutter_logo.jpg"),visible: _visible,)

        ],
      ),
    );
  }

  void simpleDialog(){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text("Are you Flutter Developer?",style: TextStyle(color: Colors.black),),
        content: Text(content,style: TextStyle(color: Colors.grey.shade700),),
        actions: [
          ElevatedButton(
              onPressed: (){
                setState(() {
                  _visible = true;
                });
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("you Flutter Developer Congratulations!!!",style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.green,
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue
              ),
              child: Text("Yes",style: TextStyle(color: Colors.white),)),
          ElevatedButton(
              onPressed: (){
                setState(() {
                  _visible = false;
                });
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("you are Others Field!!!",style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.redAccent,
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue
              ),child: Text("No",style: TextStyle(color: Colors.white),)),
        ],
      );
    });
  }
}
