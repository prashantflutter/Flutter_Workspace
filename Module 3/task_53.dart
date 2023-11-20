// 53. create an application to change background when button is clicked

import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  
  bool changeColor = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: changeColor == false?Colors.green:Colors.redAccent,
      body: Container(
        alignment: Alignment.center,
        child: GFButton(
            onPressed: (){
              if(changeColor == false){
                changeColor = true;
                setState(() {});
              }else{
                changeColor = false;
                setState(() {});
              }

            },
          child: Text("Background Color Change"),
        ),
      ),
    );
  }
}

