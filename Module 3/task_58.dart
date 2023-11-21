// 58. Write a program you have taken three seek bar controls. From three
// Seekbar which Seekbar value changed the background color of device
// will be changed.

import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double slideValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: slideValue == 20?Colors.green:slideValue == 40?Colors.redAccent.shade700:
      slideValue == 60?Colors.yellowAccent:slideValue == 80?Colors.blue.shade700:slideValue == 100?Colors.orange:Colors.black54,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50,),
          Text("Select to Change Color on Slider",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w800),),
          SizedBox(height: 15,),
          Slider(
              value: slideValue,
              max: 100,
              label: slideValue == 20?"Green":slideValue == 40?"Red": slideValue == 60?"Yellow":slideValue == 80?"Blue":slideValue == 100?"Orange":"Black",
              thumbColor: Colors.white,
              activeColor: Colors.black26,
              inactiveColor: Colors.white38,
              divisions: 5,
              onChanged: (value){
            setState(() {
              slideValue = value;
              print("slideValue ===> $slideValue.");
            });
          }),
        ],
      ),
    );
  }
}
