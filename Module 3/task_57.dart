// 57. Write a program in android display screen color which the Color will
// be select from the radio button.

import 'package:flutter/material.dart';

class ScreenColorPage extends StatefulWidget {
  const ScreenColorPage({Key? key}) : super(key: key);

  @override
  State<ScreenColorPage> createState() => _ScreenColorPageState();
}

class _ScreenColorPageState extends State<ScreenColorPage> {
  var value = "black";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: value == "green"
          ? Colors.green.shade600
          : value == "red"
              ? Colors.redAccent
              : value == "yellow"
                  ? Colors.yellow.shade600
                  : value == "blue"
                      ? Colors.blue.shade600
                      : Colors.black54,
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            "---------------------------------\nSelect Option to Change \nthe of Screen Color\n--------------------------------",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: RadioListTile(
                  title: Text("Green",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
                  value: "green",
                  groupValue: value,
                  onChanged: (val) {
                    value = val.toString();
                    setState(() {});
                    print("Color is ===> $value");
                  },
                  activeColor: Colors.green.shade600,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: RadioListTile(
                    title: Text("Red",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600)),
                    value: "red",
                    groupValue: value,
                    activeColor: Colors.redAccent,
                    onChanged: (val) {
                      value = val.toString();
                      print("Color is ===> $value");
                      setState(() {});
                    }),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: RadioListTile(
                    title: Text("Yellow",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600)),
                    value: "yellow",
                    groupValue: value,
                    activeColor: Colors.yellow.shade600,
                    onChanged: (val) {
                      value = val.toString();
                      print("Color is ===> $value");
                      setState(() {});
                    }),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: RadioListTile(
                    title: Text("Blue",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600)),
                    value: "blue",
                    groupValue: value,
                    activeColor: Colors.blue.shade600,
                    onChanged: (val) {
                      value = val.toString();
                      print("Color is ===> $value");
                      setState(() {});
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
